; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.connection = type { i32 }
%struct.rpc_binlog_request = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"rpc_send_binlog_request: remote_id = %lld, pos = %lld\0A\00", align 1
@BINLOG_POSITION = common dso_local global i64 0, align 8
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_BINLOG_REQUEST = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_6__* null, align 8
@LOG_BINLOG_REQUEST_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_binlog_request(%struct.connection* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpc_binlog_request*, align 8
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @BINLOG_POSITION, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* @Q, align 8
  %23 = inttoptr i64 %22 to %struct.rpc_binlog_request*
  store %struct.rpc_binlog_request* %23, %struct.rpc_binlog_request** %8, align 8
  %24 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %8, align 8
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = load i32, i32* @RPC_TYPE_BINLOG_REQUEST, align 4
  %27 = call i64 @rpc_create_query(%struct.rpc_binlog_request* %24, i32 24, %struct.connection* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %73

30:                                               ; preds = %21
  %31 = load i32, i32* @NODE_ID, align 4
  %32 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %8, align 8
  %33 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %8, align 8
  %36 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %8, align 8
  %39 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call %struct.TYPE_5__* @get_relative_by_id(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 0, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %47, 2
  br label %49

49:                                               ; preds = %46, %30
  %50 = phi i1 [ false, %30 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @STATS, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @LOG_BINLOG_REQUEST_SENT, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @log_event(i32 1, i32 %62, i64 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @STATS, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %8, align 8
  %71 = load %struct.connection*, %struct.connection** %5, align 8
  %72 = call i32 @rpc_send_query(%struct.rpc_binlog_request* %70, %struct.connection* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %49, %29, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_binlog_request*, i32, %struct.connection*, i32) #1

declare dso_local %struct.TYPE_5__* @get_relative_by_id(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_event(i32, i32, i64) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_binlog_request*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
