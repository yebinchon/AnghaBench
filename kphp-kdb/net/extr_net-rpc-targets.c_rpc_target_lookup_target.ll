; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.conn_target = type { i32, i32 }
%struct.tree_rpc_target = type { %struct.rpc_target* }

@rpc_target_lookup_target.t = internal global %struct.rpc_target zeroinitializer, align 4
@rpc_targets_cur_host = common dso_local global i32 0, align 4
@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_target* @rpc_target_lookup_target(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.rpc_target*, align 8
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.tree_rpc_target*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  %5 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %6 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.rpc_target* null, %struct.rpc_target** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = call i32 (...) @st_update_host()
  %12 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %13 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 2130706433
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* @rpc_targets_cur_host, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @rpc_targets_cur_host, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %24, %21, %18
  %27 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %28 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_target.t, i32 0, i32 0, i32 1), align 4
  %30 = load i32, i32* @rpc_target_tree, align 4
  %31 = call %struct.tree_rpc_target* @tree_lookup_rpc_target(i32 %30, %struct.rpc_target* @rpc_target_lookup_target.t)
  store %struct.tree_rpc_target* %31, %struct.tree_rpc_target** %4, align 8
  %32 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %4, align 8
  %33 = icmp ne %struct.tree_rpc_target* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %4, align 8
  %36 = getelementptr inbounds %struct.tree_rpc_target, %struct.tree_rpc_target* %35, i32 0, i32 0
  %37 = load %struct.rpc_target*, %struct.rpc_target** %36, align 8
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi %struct.rpc_target* [ %37, %34 ], [ null, %38 ]
  store %struct.rpc_target* %40, %struct.rpc_target** %2, align 8
  br label %41

41:                                               ; preds = %39, %9
  %42 = load %struct.rpc_target*, %struct.rpc_target** %2, align 8
  ret %struct.rpc_target* %42
}

declare dso_local i32 @st_update_host(...) #1

declare dso_local %struct.tree_rpc_target* @tree_lookup_rpc_target(i32, %struct.rpc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
