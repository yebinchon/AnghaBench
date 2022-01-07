; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.cpudata*, i32)* }
%struct.cpufreq_policy = type { i64, i32 }
%struct.cpufreq_freqs = type { i32, i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@MSR_IA32_PERF_CTL = common dso_local global i32 0, align 4
@pstate_funcs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INTEL_PSTATE_TRACE_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @intel_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpudata*, align 8
  %8 = alloca %struct.cpufreq_freqs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %11, i64 %14
  %16 = load %struct.cpudata*, %struct.cpudata** %15, align 8
  store %struct.cpudata* %16, %struct.cpudata** %7, align 8
  %17 = call i32 (...) @update_turbo_state()
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %25 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %24, %struct.cpufreq_freqs* %8)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %43 [
    i32 128, label %27
    i32 129, label %35
  ]

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %31 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %29, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %51

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %39 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = udiv i32 %37, %41
  store i32 %42, i32* %9, align 4
  br label %51

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %47 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DIV_ROUND_CLOSEST(i32 %45, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %43, %35, %27
  %52 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @intel_pstate_prepare_request(%struct.cpudata* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %56 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %61 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %68 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %71 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @MSR_IA32_PERF_CTL, align 4
  %74 = load i32 (%struct.cpudata*, i32)*, i32 (%struct.cpudata*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pstate_funcs, i32 0, i32 0), align 8
  %75 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 %74(%struct.cpudata* %75, i32 %76)
  %78 = call i32 @wrmsrl_on_cpu(i64 %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %65, %51
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %82 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %80, %84
  %86 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  %88 = load i32, i32* @INTEL_PSTATE_TRACE_TARGET, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @intel_cpufreq_trace(%struct.cpudata* %87, i32 %88, i32 %89)
  %91 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %92 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %91, %struct.cpufreq_freqs* %8, i32 0)
  ret i32 0
}

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @intel_pstate_prepare_request(%struct.cpudata*, i32) #1

declare dso_local i32 @wrmsrl_on_cpu(i64, i32, i32) #1

declare dso_local i32 @intel_cpufreq_trace(%struct.cpudata*, i32, i32) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
