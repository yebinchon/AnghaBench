; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_update_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.connection = type { i32 }
%struct.rpc_update_stats = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpc_execute_update_stats: len = %d\0A\00", align 1
@nodes_num = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_2__* null, align 8
@long_stats_num = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@last_stats_time = common dso_local global i32 0, align 4
@long_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_update_stats(%struct.connection* %0, %struct.rpc_update_stats* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_update_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_update_stats* %1, %struct.rpc_update_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %49

20:                                               ; preds = %15
  %21 = load %struct.rpc_update_stats*, %struct.rpc_update_stats** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_update_stats, %struct.rpc_update_stats* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_node_idx(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 0, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @nodes_num, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* @long_stats_num, align 4
  %45 = load i32, i32* @now, align 4
  store i32 %45, i32* @last_stats_time, align 4
  %46 = load %struct.rpc_update_stats*, %struct.rpc_update_stats** %6, align 8
  %47 = getelementptr inbounds %struct.rpc_update_stats, %struct.rpc_update_stats* %46, i32 0, i32 0
  %48 = call i32 @memcpy(i32* @long_stats, i32* %47, i32 4)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %35, %27, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @get_node_idx(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
