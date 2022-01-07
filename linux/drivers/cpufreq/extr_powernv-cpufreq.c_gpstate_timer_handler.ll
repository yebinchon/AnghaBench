; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_gpstate_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_gpstate_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_pstate_info = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__, %struct.cpufreq_policy* }
%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_policy = type { i32 }
%struct.timer_list = type { i32 }
%struct.powernv_smp_call_data = type { i64, i64 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SPRN_PMCR = common dso_local global i32 0, align 4
@MAX_RAMP_DOWN_TIME = common dso_local global i64 0, align 8
@gpstates = common dso_local global %struct.global_pstate_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpstate_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.global_pstate_info*, align 8
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.powernv_smp_call_data, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %11 = ptrtoint %struct.global_pstate_info* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* @timer, align 4
  %14 = call %struct.global_pstate_info* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.global_pstate_info* %14, %struct.global_pstate_info** %3, align 8
  %15 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %16 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %15, i32 0, i32 7
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %16, align 8
  store %struct.cpufreq_policy* %17, %struct.cpufreq_policy** %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i32 @jiffies_to_msecs(i64 %18)
  %20 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %21 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %25 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %24, i32 0, i32 5
  %26 = call i32 @spin_trylock(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %135

29:                                               ; preds = %1
  %30 = call i32 (...) @raw_smp_processor_id()
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpumask_test_cpu(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 1)
  %39 = add nsw i64 %37, %38
  %40 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %41 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %44 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %43, i32 0, i32 6
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpumask_first(i32 %47)
  %49 = call i32 @add_timer_on(%struct.TYPE_2__* %44, i32 %48)
  %50 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %51 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %50, i32 0, i32 5
  %52 = call i32 @spin_unlock(i32* %51)
  br label %135

53:                                               ; preds = %29
  %54 = load i32, i32* @SPRN_PMCR, align 4
  %55 = call i64 @get_pmspr(i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @extract_global_pstate(i64 %56)
  %58 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @extract_local_pstate(i64 %59)
  %61 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %69 = call i32 @reset_gpstates(%struct.cpufreq_policy* %68)
  %70 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %71 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %70, i32 0, i32 5
  %72 = call i32 @spin_unlock(i32* %71)
  br label %135

73:                                               ; preds = %53
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %76 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %82 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %86 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MAX_RAMP_DOWN_TIME, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pstate_to_idx(i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %6, align 4
  %95 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %96 = call i32 @reset_gpstates(%struct.cpufreq_policy* %95)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %99 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %112

100:                                              ; preds = %73
  %101 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pstate_to_idx(i64 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %105 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %108 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @calc_global_pstate(i64 %106, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %100, %90
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @idx_to_pstate(i32 %113)
  %115 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %118 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %121 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %124 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %112
  %128 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %129 = call i32 @queue_gpstate_timer(%struct.global_pstate_info* %128)
  br label %130

130:                                              ; preds = %127, %112
  %131 = call i32 @set_pstate(%struct.powernv_smp_call_data* %9)
  %132 = load %struct.global_pstate_info*, %struct.global_pstate_info** %3, align 8
  %133 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %132, i32 0, i32 5
  %134 = call i32 @spin_unlock(i32* %133)
  br label %135

135:                                              ; preds = %130, %67, %36, %28
  ret void
}

declare dso_local %struct.global_pstate_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer_on(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @get_pmspr(i32) #1

declare dso_local i64 @extract_global_pstate(i64) #1

declare dso_local i64 @extract_local_pstate(i64) #1

declare dso_local i32 @reset_gpstates(%struct.cpufreq_policy*) #1

declare dso_local i32 @pstate_to_idx(i64) #1

declare dso_local i32 @calc_global_pstate(i64, i32, i32) #1

declare dso_local i64 @idx_to_pstate(i32) #1

declare dso_local i32 @queue_gpstate_timer(%struct.global_pstate_info*) #1

declare dso_local i32 @set_pstate(%struct.powernv_smp_call_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
