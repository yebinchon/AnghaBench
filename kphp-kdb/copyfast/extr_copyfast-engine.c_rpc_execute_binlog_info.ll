; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_binlog_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_binlog_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_binlog_info = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"rpc_execute_binlog_info: remote_id = %lld, len = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_binlog_info(%struct.connection* %0, %struct.rpc_binlog_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_binlog_info*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_binlog_info* %1, %struct.rpc_binlog_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %13 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %3
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %50

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %29 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_relative_by_id(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %36 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rpc_send_handshake_reject(%struct.connection* %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %22
  %40 = load i32, i32* @precise_now, align 4
  %41 = load %struct.connection*, %struct.connection** %5, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %44 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %47 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @update_relatives_binlog_position(i32 %45, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %39, %33, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @get_relative_by_id(i32) #1

declare dso_local i32 @rpc_send_handshake_reject(%struct.connection*, i32) #1

declare dso_local i32 @update_relatives_binlog_position(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
