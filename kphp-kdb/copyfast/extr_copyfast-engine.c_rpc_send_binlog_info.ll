; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_binlog_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_binlog_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"rpc_send_binlog_info: remote_id = %lld\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_BINLOG_INFO = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4
@BINLOG_POSITION = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_binlog_info(%struct.connection* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rpc_binlog_info*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i64, i64* @Q, align 8
  %14 = inttoptr i64 %13 to %struct.rpc_binlog_info*
  store %struct.rpc_binlog_info* %14, %struct.rpc_binlog_info** %6, align 8
  %15 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = load i32, i32* @RPC_TYPE_BINLOG_INFO, align 4
  %18 = call i64 @rpc_create_query(%struct.rpc_binlog_info* %15, i32 16, %struct.connection* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %39

21:                                               ; preds = %12
  %22 = load i32, i32* @NODE_ID, align 4
  %23 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %24 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @BINLOG_POSITION, align 4
  %29 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_binlog_info, %struct.rpc_binlog_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rpc_binlog_info*, %struct.rpc_binlog_info** %6, align 8
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = call i32 @rpc_send_query(%struct.rpc_binlog_info* %36, %struct.connection* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %21, %20, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_binlog_info*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_binlog_info*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
