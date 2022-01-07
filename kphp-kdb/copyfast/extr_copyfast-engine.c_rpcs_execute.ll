; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpcs_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpcs_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.rpcs_op = type { i32 }
%struct.rpc_handshake = type { i32 }
%struct.rpc_handshake_accept = type { i32 }
%struct.rpc_handshake_reject = type { i32 }
%struct.rpc_binlog_info = type { i32 }
%struct.rpc_binlog_request = type { i32 }
%struct.rpc_binlog_data = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcs_execute: fd=%d, op=%x, len=%d\0A\00", align 1
@MAX_PACKET_LEN = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@P = common dso_local global i64 0, align 8
@CLUSTER_MASK = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
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
  br label %93

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
  %36 = load i64, i64* @P, align 8
  %37 = inttoptr i64 %36 to %struct.rpcs_op*
  %38 = getelementptr inbounds %struct.rpcs_op, %struct.rpcs_op* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @choose_cluster(i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %24
  %43 = load i64, i64* @P, align 8
  %44 = inttoptr i64 %43 to %struct.rpcs_op*
  %45 = getelementptr inbounds %struct.rpcs_op, %struct.rpcs_op* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CLUSTER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @NODE_ID, align 4
  %50 = load i32, i32* @CLUSTER_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42, %24
  store i32 0, i32* %4, align 4
  br label %93

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %92 [
    i32 130, label %56
    i32 129, label %62
    i32 128, label %68
    i32 132, label %74
    i32 131, label %80
    i32 133, label %86
  ]

56:                                               ; preds = %54
  %57 = load %struct.connection*, %struct.connection** %5, align 8
  %58 = load i64, i64* @P, align 8
  %59 = inttoptr i64 %58 to %struct.rpc_handshake*
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @rpc_execute_handshake(%struct.connection* %57, %struct.rpc_handshake* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %93

62:                                               ; preds = %54
  %63 = load %struct.connection*, %struct.connection** %5, align 8
  %64 = load i64, i64* @P, align 8
  %65 = inttoptr i64 %64 to %struct.rpc_handshake_accept*
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @rpc_execute_handshake_accept(%struct.connection* %63, %struct.rpc_handshake_accept* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %54
  %69 = load %struct.connection*, %struct.connection** %5, align 8
  %70 = load i64, i64* @P, align 8
  %71 = inttoptr i64 %70 to %struct.rpc_handshake_reject*
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @rpc_execute_handshake_reject(%struct.connection* %69, %struct.rpc_handshake_reject* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %54
  %75 = load %struct.connection*, %struct.connection** %5, align 8
  %76 = load i64, i64* @P, align 8
  %77 = inttoptr i64 %76 to %struct.rpc_binlog_info*
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @rpc_execute_binlog_info(%struct.connection* %75, %struct.rpc_binlog_info* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %93

80:                                               ; preds = %54
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = load i64, i64* @P, align 8
  %83 = inttoptr i64 %82 to %struct.rpc_binlog_request*
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @rpc_execute_binlog_request(%struct.connection* %81, %struct.rpc_binlog_request* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %93

86:                                               ; preds = %54
  %87 = load %struct.connection*, %struct.connection** %5, align 8
  %88 = load i64, i64* @P, align 8
  %89 = inttoptr i64 %88 to %struct.rpc_binlog_data*
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rpc_execute_binlog_data(%struct.connection* %87, %struct.rpc_binlog_data* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %86, %80, %74, %68, %62, %56, %53, %22
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @rpc_check_crc32(i64) #1

declare dso_local i64 @choose_cluster(i32) #1

declare dso_local i32 @rpc_execute_handshake(%struct.connection*, %struct.rpc_handshake*, i32) #1

declare dso_local i32 @rpc_execute_handshake_accept(%struct.connection*, %struct.rpc_handshake_accept*, i32) #1

declare dso_local i32 @rpc_execute_handshake_reject(%struct.connection*, %struct.rpc_handshake_reject*, i32) #1

declare dso_local i32 @rpc_execute_binlog_info(%struct.connection*, %struct.rpc_binlog_info*, i32) #1

declare dso_local i32 @rpc_execute_binlog_request(%struct.connection*, %struct.rpc_binlog_request*, i32) #1

declare dso_local i32 @rpc_execute_binlog_data(%struct.connection*, %struct.rpc_binlog_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
