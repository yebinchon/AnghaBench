; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_maybe_throttle_current.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_maybe_throttle_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.blkcg = type { i32 }
%struct.blkcg_gq = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@io_cgrp_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkcg_maybe_throttle_current() #0 {
  %1 = alloca %struct.request_queue*, align 8
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.blkcg*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %1, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %1, align 8
  %13 = icmp ne %struct.request_queue* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %61

15:                                               ; preds = %0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.request_queue* null, %struct.request_queue** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = call i32 (...) @rcu_read_lock()
  %21 = call %struct.cgroup_subsys_state* (...) @kthread_blkcg()
  store %struct.cgroup_subsys_state* %21, %struct.cgroup_subsys_state** %2, align 8
  %22 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %23 = icmp ne %struct.cgroup_subsys_state* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %26 = call %struct.blkcg* @css_to_blkcg(%struct.cgroup_subsys_state* %25)
  store %struct.blkcg* %26, %struct.blkcg** %3, align 8
  br label %32

27:                                               ; preds = %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = load i32, i32* @io_cgrp_id, align 4
  %30 = call %struct.cgroup_subsys_state* @task_css(%struct.TYPE_3__* %28, i32 %29)
  %31 = call %struct.blkcg* @css_to_blkcg(%struct.cgroup_subsys_state* %30)
  store %struct.blkcg* %31, %struct.blkcg** %3, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %34 = icmp ne %struct.blkcg* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %57

36:                                               ; preds = %32
  %37 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %1, align 8
  %39 = call %struct.blkcg_gq* @blkg_lookup(%struct.blkcg* %37, %struct.request_queue* %38)
  store %struct.blkcg_gq* %39, %struct.blkcg_gq** %4, align 8
  %40 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %41 = icmp ne %struct.blkcg_gq* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %57

43:                                               ; preds = %36
  %44 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %45 = call i32 @blkg_tryget(%struct.blkcg_gq* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %57

48:                                               ; preds = %43
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @blkcg_maybe_throttle_blkg(%struct.blkcg_gq* %50, i32 %51)
  %53 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %54 = call i32 @blkg_put(%struct.blkcg_gq* %53)
  %55 = load %struct.request_queue*, %struct.request_queue** %1, align 8
  %56 = call i32 @blk_put_queue(%struct.request_queue* %55)
  br label %61

57:                                               ; preds = %47, %42, %35
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load %struct.request_queue*, %struct.request_queue** %1, align 8
  %60 = call i32 @blk_put_queue(%struct.request_queue* %59)
  br label %61

61:                                               ; preds = %57, %48, %14
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cgroup_subsys_state* @kthread_blkcg(...) #1

declare dso_local %struct.blkcg* @css_to_blkcg(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.cgroup_subsys_state* @task_css(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.blkcg_gq* @blkg_lookup(%struct.blkcg*, %struct.request_queue*) #1

declare dso_local i32 @blkg_tryget(%struct.blkcg_gq*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @blkcg_maybe_throttle_blkg(%struct.blkcg_gq*, i32) #1

declare dso_local i32 @blkg_put(%struct.blkcg_gq*) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
