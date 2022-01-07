; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_target_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_target_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, %struct.global_pstate_info* }
%struct.global_pstate_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.powernv_smp_call_data = type { i8*, i8* }

@rebooting = common dso_local global i32 0, align 4
@throttled = common dso_local global i32 0, align 4
@MAX_RAMP_DOWN_TIME = common dso_local global i64 0, align 8
@set_pstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @powernv_cpufreq_target_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_cpufreq_target_index(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.powernv_smp_call_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.global_pstate_info*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 1
  %12 = load %struct.global_pstate_info*, %struct.global_pstate_info** %11, align 8
  store %struct.global_pstate_info* %12, %struct.global_pstate_info** %9, align 8
  %13 = load i32, i32* @rebooting, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (...) @get_nominal_index()
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %134

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @throttled, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @preempt_disable()
  %26 = call i32 @powernv_cpufreq_throttle_check(i32* null)
  %27 = call i32 (...) @preempt_enable()
  br label %28

28:                                               ; preds = %24, %21
  %29 = call i32 (...) @get_jiffies_64()
  %30 = call i32 @jiffies_to_msecs(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @idx_to_pstate(i32 %31)
  %33 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %6, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %35 = icmp ne %struct.global_pstate_info* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %6, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %6, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  br label %128

40:                                               ; preds = %28
  %41 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %42 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %41, i32 0, i32 5
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %45 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %52 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %112

53:                                               ; preds = %40
  %54 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %55 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %62 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %66 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %70 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @MAX_RAMP_DOWN_TIME, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %59
  %76 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %77 = call i32 @reset_gpstates(%struct.cpufreq_policy* %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %80 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %8, align 4
  br label %92

82:                                               ; preds = %59
  %83 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %84 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %88 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @calc_global_pstate(i64 %86, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %82, %75
  br label %100

93:                                               ; preds = %53
  %94 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %95 = call i32 @reset_gpstates(%struct.cpufreq_policy* %94)
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %98 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %93, %92
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %106 = call i32 @queue_gpstate_timer(%struct.global_pstate_info* %105)
  br label %111

107:                                              ; preds = %100
  %108 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %109 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %108, i32 0, i32 6
  %110 = call i32 @del_timer_sync(i32* %109)
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %48
  %113 = load i32, i32* %8, align 4
  %114 = call i8* @idx_to_pstate(i32 %113)
  %115 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %6, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %118 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %121 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %124 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.global_pstate_info*, %struct.global_pstate_info** %9, align 8
  %126 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %125, i32 0, i32 5
  %127 = call i32 @spin_unlock(i32* %126)
  br label %128

128:                                              ; preds = %112, %36
  %129 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %130 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @set_pstate, align 4
  %133 = call i32 @smp_call_function_any(i32 %131, i32 %132, %struct.powernv_smp_call_data* %6, i32 1)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %20
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_nominal_index(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @powernv_cpufreq_throttle_check(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i8* @idx_to_pstate(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reset_gpstates(%struct.cpufreq_policy*) #1

declare dso_local i32 @calc_global_pstate(i64, i32, i32) #1

declare dso_local i32 @queue_gpstate_timer(%struct.global_pstate_info*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @smp_call_function_any(i32, i32, %struct.powernv_smp_call_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
