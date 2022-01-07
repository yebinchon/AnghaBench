; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_insert_target_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_insert_target_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.conn_target*, %struct.TYPE_2__ }
%struct.conn_target = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tree_rpc_target = type { %struct.rpc_target* }

@rpc_target_insert_target_ext.t = internal global %struct.rpc_target zeroinitializer, align 8
@rpc_targets_cur_host = common dso_local global i32 0, align 4
@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_target_insert_target_ext(%struct.conn_target* %0, i32 %1) #0 {
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_rpc_target*, align 8
  %6 = alloca %struct.rpc_target*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @st_update_host()
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %62

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  %14 = icmp eq i32 %13, 2130706433
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @rpc_targets_cur_host, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @rpc_targets_cur_host, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 0), align 8
  br label %24

24:                                               ; preds = %22, %19, %16
  %25 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %26 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1, i32 1), align 4
  %28 = load i32, i32* @rpc_target_tree, align 4
  %29 = call %struct.tree_rpc_target* @tree_lookup_rpc_target(i32 %28, %struct.rpc_target* @rpc_target_insert_target_ext.t)
  store %struct.tree_rpc_target* %29, %struct.tree_rpc_target** %5, align 8
  %30 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %5, align 8
  %31 = icmp ne %struct.tree_rpc_target* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %5, align 8
  %34 = getelementptr inbounds %struct.tree_rpc_target, %struct.tree_rpc_target* %33, i32 0, i32 0
  %35 = load %struct.rpc_target*, %struct.rpc_target** %34, align 8
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi %struct.rpc_target* [ %35, %32 ], [ null, %36 ]
  store %struct.rpc_target* %38, %struct.rpc_target** %6, align 8
  %39 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %40 = icmp ne %struct.rpc_target* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* bitcast (%struct.TYPE_2__* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_target_ext.t, i32 0, i32 1) to i64*), align 8
  %43 = call %struct.rpc_target* @rpc_target_alloc(i64 %42)
  store %struct.rpc_target* %43, %struct.rpc_target** %6, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %46 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %45, i32 0, i32 0
  %47 = load %struct.conn_target*, %struct.conn_target** %46, align 8
  %48 = icmp ne %struct.conn_target* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %50, i32 0, i32 0
  %52 = load %struct.conn_target*, %struct.conn_target** %51, align 8
  %53 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %54 = icmp eq %struct.conn_target* %52, %53
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ true, %44 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %60 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %61 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %60, i32 0, i32 0
  store %struct.conn_target* %59, %struct.conn_target** %61, align 8
  br label %62

62:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @st_update_host(...) #1

declare dso_local %struct.tree_rpc_target* @tree_lookup_rpc_target(i32, %struct.rpc_target*) #1

declare dso_local %struct.rpc_target* @rpc_target_alloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
