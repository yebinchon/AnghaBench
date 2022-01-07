; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup_hp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup_hp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tree_rpc_target = type { %struct.rpc_target* }

@rpc_target_lookup_hp.t = internal global %struct.rpc_target zeroinitializer, align 4
@rpc_targets_cur_host = common dso_local global i32 0, align 4
@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_target* @rpc_target_lookup_hp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_rpc_target*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @st_update_host()
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, 2130706433
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 0), align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, i32* @rpc_targets_cur_host, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @rpc_targets_cur_host, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 0), align 4
  br label %19

19:                                               ; preds = %17, %14, %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup_hp.t, i32 0, i32 0, i32 1), align 4
  %21 = load i32, i32* @rpc_target_tree, align 4
  %22 = call %struct.tree_rpc_target* @tree_lookup_rpc_target(i32 %21, %struct.rpc_target* @rpc_target_lookup_hp.t)
  store %struct.tree_rpc_target* %22, %struct.tree_rpc_target** %5, align 8
  %23 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %5, align 8
  %24 = icmp ne %struct.tree_rpc_target* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %5, align 8
  %27 = getelementptr inbounds %struct.tree_rpc_target, %struct.tree_rpc_target* %26, i32 0, i32 0
  %28 = load %struct.rpc_target*, %struct.rpc_target** %27, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.rpc_target* [ %28, %25 ], [ null, %29 ]
  ret %struct.rpc_target* %31
}

declare dso_local i32 @st_update_host(...) #1

declare dso_local %struct.tree_rpc_target* @tree_lookup_rpc_target(i32, %struct.rpc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
