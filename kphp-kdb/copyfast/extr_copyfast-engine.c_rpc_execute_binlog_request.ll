; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_binlog_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_binlog_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_binlog_request = type { i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rpc_execute_binlog_request: remote_id = %lld, len = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@BINLOG_POSITION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_binlog_request(%struct.connection* %0, %struct.rpc_binlog_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_binlog_request*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_binlog_request* %1, %struct.rpc_binlog_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %13 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %3
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %55

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %29 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_relative_by_id(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %36 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rpc_send_handshake_reject(%struct.connection* %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %22
  %40 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BINLOG_POSITION, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.connection*, %struct.connection** %5, align 8
  %48 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rpc_binlog_request*, %struct.rpc_binlog_request** %6, align 8
  %52 = getelementptr inbounds %struct.rpc_binlog_request, %struct.rpc_binlog_request* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @rpc_send_binlog_data(%struct.connection* %47, i32 %50, i64 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %45, %33, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @get_relative_by_id(i32) #1

declare dso_local i32 @rpc_send_handshake_reject(%struct.connection*, i32) #1

declare dso_local i32 @rpc_send_binlog_data(%struct.connection*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
