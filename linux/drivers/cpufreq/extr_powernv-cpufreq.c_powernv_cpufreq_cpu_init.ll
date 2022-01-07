; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cpufreq_policy = type { i32, %struct.global_pstate_info*, i32, i32, %struct.TYPE_7__, i32 }
%struct.global_pstate_info = type { i32, %struct.TYPE_5__, %struct.cpufreq_policy* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.kernfs_node = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@throttle_attr_grp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to create throttle stats directory for cpu %d\0A\00", align 1
@powernv_freqs = common dso_local global i32 0, align 4
@PVR_POWER9 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpstate_timer_handler = common dso_local global i32 0, align 4
@TIMER_PINNED = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GPSTATE_TIMER_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @powernv_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.global_pstate_info*, align 8
  %8 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_first_thread_sibling(i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @threads_per_core, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpumask_set_cpu(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @throttle_attr_grp, i32 0, i32 0), align 4
  %34 = call %struct.kernfs_node* @kernfs_find_and_get(i32 %32, i32 %33)
  store %struct.kernfs_node* %34, %struct.kernfs_node** %6, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %36 = icmp ne %struct.kernfs_node* %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %28
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 4
  %40 = call i32 @sysfs_create_group(%struct.TYPE_7__* %39, %struct.TYPE_6__* @throttle_attr_grp)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %45 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %37
  br label %53

50:                                               ; preds = %28
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %52 = call i32 @kernfs_put(%struct.kernfs_node* %51)
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* @powernv_freqs, align 4
  %55 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %56 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %58 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @PVR_POWER9, align 4
  %60 = call i64 @pvr_version_is(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %95

63:                                               ; preds = %53
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.global_pstate_info* @kzalloc(i32 24, i32 %64)
  store %struct.global_pstate_info* %65, %struct.global_pstate_info** %7, align 8
  %66 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %67 = icmp ne %struct.global_pstate_info* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %63
  %72 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %73 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %74 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %73, i32 0, i32 1
  store %struct.global_pstate_info* %72, %struct.global_pstate_info** %74, align 8
  %75 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %76 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %77 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %76, i32 0, i32 2
  store %struct.cpufreq_policy* %75, %struct.cpufreq_policy** %77, align 8
  %78 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %79 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %78, i32 0, i32 1
  %80 = load i32, i32* @gpstate_timer_handler, align 4
  %81 = load i32, i32* @TIMER_PINNED, align 4
  %82 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @timer_setup(%struct.TYPE_5__* %79, i32 %80, i32 %83)
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i32, i32* @GPSTATE_TIMER_INTERVAL, align 4
  %87 = call i64 @msecs_to_jiffies(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %90 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load %struct.global_pstate_info*, %struct.global_pstate_info** %7, align 8
  %93 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %92, i32 0, i32 0
  %94 = call i32 @spin_lock_init(i32* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %71, %68, %62, %43
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(i32, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i64 @pvr_version_is(i32) #1

declare dso_local %struct.global_pstate_info* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
