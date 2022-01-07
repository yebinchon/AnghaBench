; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_stop_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_stop_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i32, %struct.global_pstate_info* }
%struct.global_pstate_info = type { i32 }
%struct.powernv_smp_call_data = type { i8*, i8* }

@powernv_pstate_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@set_pstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @powernv_cpufreq_stop_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powernv_cpufreq_stop_cpu(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.powernv_smp_call_data, align 8
  %4 = alloca %struct.global_pstate_info*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 1
  %7 = load %struct.global_pstate_info*, %struct.global_pstate_info** %6, align 8
  store %struct.global_pstate_info* %7, %struct.global_pstate_info** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @powernv_pstate_info, i32 0, i32 0), align 4
  %9 = call i8* @idx_to_pstate(i32 %8)
  %10 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %3, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @powernv_pstate_info, i32 0, i32 0), align 4
  %12 = call i8* @idx_to_pstate(i32 %11)
  %13 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %3, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @set_pstate, align 4
  %18 = call i32 @smp_call_function_single(i32 %16, i32 %17, %struct.powernv_smp_call_data* %3, i32 1)
  %19 = load %struct.global_pstate_info*, %struct.global_pstate_info** %4, align 8
  %20 = icmp ne %struct.global_pstate_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.global_pstate_info*, %struct.global_pstate_info** %4, align 8
  %23 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %22, i32 0, i32 0
  %24 = call i32 @del_timer_sync(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local i8* @idx_to_pstate(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.powernv_smp_call_data*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
