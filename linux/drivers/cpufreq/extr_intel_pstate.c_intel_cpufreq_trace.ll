; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, %struct.TYPE_2__, %struct.sample }
%struct.TYPE_2__ = type { i32 }
%struct.sample = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*, i32, i32)* @intel_cpufreq_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_cpufreq_trace(%struct.cpudata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpudata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sample*, align 8
  store %struct.cpudata* %0, %struct.cpudata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @trace_pstate_sample_enabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %43

11:                                               ; preds = %3
  %12 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %13 = call i32 (...) @ktime_get()
  %14 = call i32 @intel_pstate_sample(%struct.cpudata* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %43

17:                                               ; preds = %11
  %18 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %19 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %18, i32 0, i32 2
  store %struct.sample* %19, %struct.sample** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %23 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sample*, %struct.sample** %7, align 8
  %27 = getelementptr inbounds %struct.sample, %struct.sample* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sample*, %struct.sample** %7, align 8
  %30 = getelementptr inbounds %struct.sample, %struct.sample* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sample*, %struct.sample** %7, align 8
  %33 = getelementptr inbounds %struct.sample, %struct.sample* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %36 = call i32 @get_avg_frequency(%struct.cpudata* %35)
  %37 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %38 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 100
  %41 = call i32 @fp_toint(i32 %40)
  %42 = call i32 @trace_pstate_sample(i32 %20, i32 0, i32 %21, i32 %25, i32 %28, i32 %31, i32 %34, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i32 @trace_pstate_sample_enabled(...) #1

declare dso_local i32 @intel_pstate_sample(%struct.cpudata*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @trace_pstate_sample(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_avg_frequency(%struct.cpudata*) #1

declare dso_local i32 @fp_toint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
