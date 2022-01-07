; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpcs_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpcs_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.rpc_join = type { i32 }
%struct.rpc_join_old = type { i32 }
%struct.rpc_children_request = type { i32 }
%struct.rpc_stats = type { i32 }
%struct.rpc_update_stats = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcs_execute: fd=%d, op=%x, len=%d\0A\00", align 1
@MAX_PACKET_LEN = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @verbosity, align 8
  %9 = icmp sgt i64 %8, 0
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
  br label %68

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
  switch i32 %36, label %67 [
    i32 131, label %37
    i32 130, label %43
    i32 132, label %49
    i32 129, label %55
    i32 128, label %61
  ]

37:                                               ; preds = %24
  %38 = load %struct.connection*, %struct.connection** %5, align 8
  %39 = load i64, i64* @P, align 8
  %40 = inttoptr i64 %39 to %struct.rpc_join*
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rpc_execute_join(%struct.connection* %38, %struct.rpc_join* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %24
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = load i64, i64* @P, align 8
  %46 = inttoptr i64 %45 to %struct.rpc_join_old*
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @rpc_execute_join_old(%struct.connection* %44, %struct.rpc_join_old* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %68

49:                                               ; preds = %24
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = load i64, i64* @P, align 8
  %52 = inttoptr i64 %51 to %struct.rpc_children_request*
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @rpc_execute_children_request(%struct.connection* %50, %struct.rpc_children_request* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %68

55:                                               ; preds = %24
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = load i64, i64* @P, align 8
  %58 = inttoptr i64 %57 to %struct.rpc_stats*
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @rpc_execute_stats(%struct.connection* %56, %struct.rpc_stats* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %68

61:                                               ; preds = %24
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = load i64, i64* @P, align 8
  %64 = inttoptr i64 %63 to %struct.rpc_update_stats*
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @rpc_execute_update_stats(%struct.connection* %62, %struct.rpc_update_stats* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %55, %49, %43, %37, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @rpc_check_crc32(i64) #1

declare dso_local i32 @rpc_execute_join(%struct.connection*, %struct.rpc_join*, i32) #1

declare dso_local i32 @rpc_execute_join_old(%struct.connection*, %struct.rpc_join_old*, i32) #1

declare dso_local i32 @rpc_execute_children_request(%struct.connection*, %struct.rpc_children_request*, i32) #1

declare dso_local i32 @rpc_execute_stats(%struct.connection*, %struct.rpc_stats*, i32) #1

declare dso_local i32 @rpc_execute_update_stats(%struct.connection*, %struct.rpc_update_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
