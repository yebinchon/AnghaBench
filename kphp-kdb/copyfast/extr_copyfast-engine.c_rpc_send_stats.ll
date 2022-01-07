; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_stats = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"rpc_send_stats: c = %p\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_STATS = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_stats(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpc_stats*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.connection* %5)
  %7 = load i64, i64* @Q, align 8
  %8 = inttoptr i64 %7 to %struct.rpc_stats*
  store %struct.rpc_stats* %8, %struct.rpc_stats** %4, align 8
  %9 = load %struct.rpc_stats*, %struct.rpc_stats** %4, align 8
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = load i32, i32* @RPC_TYPE_STATS, align 4
  %12 = call i64 @rpc_create_query(%struct.rpc_stats* %9, i32 8, %struct.connection* %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @NODE_ID, align 4
  %17 = load %struct.rpc_stats*, %struct.rpc_stats** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_stats, %struct.rpc_stats* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rpc_stats*, %struct.rpc_stats** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_stats, %struct.rpc_stats* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @STATS, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.TYPE_5__* %21, i32 4)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @STATS, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.rpc_stats*, %struct.rpc_stats** %4, align 8
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = call i32 @rpc_send_query(%struct.rpc_stats* %28, %struct.connection* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %15, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.connection*) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_stats*, i32, %struct.connection*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_stats*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
