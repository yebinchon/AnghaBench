; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpcc_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpcc_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.rpcc_op = type { i32 }
%struct.rpc_join_ack = type { i32 }
%struct.rpc_children_answer = type { i32 }
%struct.rpc_kicked = type { i32 }
%struct.rpc_request_update_stats = type { i32 }
%struct.rpc_delays = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcc_execute: fd=%d, op=%x, len=%d\0A\00", align 1
@MAX_PACKET_LEN = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@P = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.connection*, %struct.connection** %5, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAX_PACKET_LEN, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %23, i32* %4, align 4
  br label %88

24:                                               ; preds = %18
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @read_in(i32* %26, i64* @P, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* @P, align 8
  %34 = call i32 @rpc_check_crc32(i64 %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 130
  br i1 %37, label %45, label %38

38:                                               ; preds = %24
  %39 = load i64, i64* @P, align 8
  %40 = inttoptr i64 %39 to %struct.rpcc_op*
  %41 = getelementptr inbounds %struct.rpcc_op, %struct.rpcc_op* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @choose_cluster_f(i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38, %24
  %46 = load i64, i64* @P, align 8
  %47 = inttoptr i64 %46 to %struct.rpcc_op*
  %48 = getelementptr inbounds %struct.rpcc_op, %struct.rpcc_op* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @choose_cluster(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %88

53:                                               ; preds = %45, %38
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @vkprintf(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %87 [
    i32 130, label %57
    i32 132, label %63
    i32 129, label %69
    i32 128, label %75
    i32 131, label %81
  ]

57:                                               ; preds = %53
  %58 = load %struct.connection*, %struct.connection** %5, align 8
  %59 = load i64, i64* @P, align 8
  %60 = inttoptr i64 %59 to %struct.rpc_join_ack*
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rpc_execute_join_ack(%struct.connection* %58, %struct.rpc_join_ack* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %88

63:                                               ; preds = %53
  %64 = load %struct.connection*, %struct.connection** %5, align 8
  %65 = load i64, i64* @P, align 8
  %66 = inttoptr i64 %65 to %struct.rpc_children_answer*
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @rpc_execute_children_answer(%struct.connection* %64, %struct.rpc_children_answer* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %88

69:                                               ; preds = %53
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = load i64, i64* @P, align 8
  %72 = inttoptr i64 %71 to %struct.rpc_kicked*
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @rpc_execute_kicked(%struct.connection* %70, %struct.rpc_kicked* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %88

75:                                               ; preds = %53
  %76 = load %struct.connection*, %struct.connection** %5, align 8
  %77 = load i64, i64* @P, align 8
  %78 = inttoptr i64 %77 to %struct.rpc_request_update_stats*
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @rpc_execute_request_update_stats(%struct.connection* %76, %struct.rpc_request_update_stats* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %88

81:                                               ; preds = %53
  %82 = load %struct.connection*, %struct.connection** %5, align 8
  %83 = load i64, i64* @P, align 8
  %84 = inttoptr i64 %83 to %struct.rpc_delays*
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rpc_execute_delays(%struct.connection* %82, %struct.rpc_delays* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %81, %75, %69, %63, %57, %52, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @rpc_check_crc32(i64) #1

declare dso_local i64 @choose_cluster_f(i32) #1

declare dso_local i64 @choose_cluster(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @rpc_execute_join_ack(%struct.connection*, %struct.rpc_join_ack*, i32) #1

declare dso_local i32 @rpc_execute_children_answer(%struct.connection*, %struct.rpc_children_answer*, i32) #1

declare dso_local i32 @rpc_execute_kicked(%struct.connection*, %struct.rpc_kicked*, i32) #1

declare dso_local i32 @rpc_execute_request_update_stats(%struct.connection*, %struct.rpc_request_update_stats*, i32) #1

declare dso_local i32 @rpc_execute_delays(%struct.connection*, %struct.rpc_delays*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
