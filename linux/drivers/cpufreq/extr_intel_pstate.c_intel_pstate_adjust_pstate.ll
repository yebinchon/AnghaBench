; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_adjust_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_adjust_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, %struct.TYPE_2__, %struct.sample, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sample = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*)* @intel_pstate_adjust_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_adjust_pstate(%struct.cpudata* %0) #0 {
  %2 = alloca %struct.cpudata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sample*, align 8
  %5 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %2, align 8
  %6 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %7 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @update_turbo_state()
  %11 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %12 = call i32 @get_target_pstate(%struct.cpudata* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @intel_pstate_prepare_request(%struct.cpudata* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %18 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %16, %20
  %22 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %23 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @trace_cpu_frequency(i32 %21, i32 %24)
  %26 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @intel_pstate_update_pstate(%struct.cpudata* %26, i32 %27)
  %29 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %30 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %29, i32 0, i32 2
  store %struct.sample* %30, %struct.sample** %4, align 8
  %31 = load %struct.sample*, %struct.sample** %4, align 8
  %32 = getelementptr inbounds %struct.sample, %struct.sample* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mul_ext_fp(i32 100, i32 %33)
  %35 = load %struct.sample*, %struct.sample** %4, align 8
  %36 = getelementptr inbounds %struct.sample, %struct.sample* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fp_toint(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %41 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sample*, %struct.sample** %4, align 8
  %45 = getelementptr inbounds %struct.sample, %struct.sample* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sample*, %struct.sample** %4, align 8
  %48 = getelementptr inbounds %struct.sample, %struct.sample* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sample*, %struct.sample** %4, align 8
  %51 = getelementptr inbounds %struct.sample, %struct.sample* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %54 = call i32 @get_avg_frequency(%struct.cpudata* %53)
  %55 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %56 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 100
  %59 = call i32 @fp_toint(i32 %58)
  %60 = call i32 @trace_pstate_sample(i32 %34, i32 %38, i32 %39, i32 %43, i32 %46, i32 %49, i32 %52, i32 %54, i32 %59)
  ret void
}

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @get_target_pstate(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_prepare_request(%struct.cpudata*, i32) #1

declare dso_local i32 @trace_cpu_frequency(i32, i32) #1

declare dso_local i32 @intel_pstate_update_pstate(%struct.cpudata*, i32) #1

declare dso_local i32 @trace_pstate_sample(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mul_ext_fp(i32, i32) #1

declare dso_local i32 @fp_toint(i32) #1

declare dso_local i32 @get_avg_frequency(%struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
