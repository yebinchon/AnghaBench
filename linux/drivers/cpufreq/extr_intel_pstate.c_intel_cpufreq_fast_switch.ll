; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_fast_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_fast_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_policy = type { i64 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@INTEL_PSTATE_TRACE_FAST_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @intel_cpufreq_fast_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cpufreq_fast_switch(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpudata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %8, i64 %11
  %13 = load %struct.cpudata*, %struct.cpudata** %12, align 8
  store %struct.cpudata* %13, %struct.cpudata** %5, align 8
  %14 = call i32 (...) @update_turbo_state()
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %17 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DIV_ROUND_UP(i32 %15, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @intel_pstate_prepare_request(%struct.cpudata* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %25 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @intel_pstate_update_pstate(%struct.cpudata* %28, i32 %29)
  %31 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %32 = load i32, i32* @INTEL_PSTATE_TRACE_FAST_SWITCH, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @intel_cpufreq_trace(%struct.cpudata* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %37 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  ret i32 %40
}

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @intel_pstate_prepare_request(%struct.cpudata*, i32) #1

declare dso_local i32 @intel_pstate_update_pstate(%struct.cpudata*, i32) #1

declare dso_local i32 @intel_cpufreq_trace(%struct.cpudata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
