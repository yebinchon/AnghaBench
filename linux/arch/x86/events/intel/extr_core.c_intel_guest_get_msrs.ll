; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_guest_get_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_guest_get_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.perf_guest_switch_msr = type { i32, i32, i32 }
%struct.cpu_hw_events = type { i32, i32, i32, %struct.perf_guest_switch_msr* }

@cpu_hw_events = common dso_local global i32 0, align 4
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMU_FL_PEBS_ALL = common dso_local global i32 0, align 4
@PEBS_COUNTER_MASK = common dso_local global i32 0, align 4
@MSR_IA32_PEBS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_guest_switch_msr* (i32*)* @intel_guest_get_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_guest_switch_msr* @intel_guest_get_msrs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_guest_switch_msr*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %5, %struct.cpu_hw_events** %3, align 8
  %6 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %7 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %6, i32 0, i32 3
  %8 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %7, align 8
  store %struct.perf_guest_switch_msr* %8, %struct.perf_guest_switch_msr** %4, align 8
  %9 = load i32, i32* @MSR_CORE_PERF_GLOBAL_CTRL, align 4
  %10 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %11 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %10, i64 0
  %12 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %20 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %19, i64 0
  %21 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %23 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %29 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %28, i64 0
  %30 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 4
  %32 = load i32, i32* @PMU_FL_PEBS_ALL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %1
  %36 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %37 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %38, -1
  %40 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %41 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %40, i64 0
  %42 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %57

45:                                               ; preds = %1
  %46 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %47 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PEBS_COUNTER_MASK, align 4
  %50 = and i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %53 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %52, i64 0
  %54 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %45, %35
  %58 = load i32*, i32** %2, align 8
  store i32 1, i32* %58, align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 3), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 2), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* @MSR_IA32_PEBS_ENABLE, align 4
  %66 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %67 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %66, i64 1
  %68 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %70 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %73 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %72, i64 1
  %74 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %76 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %75, i64 1
  %77 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** %2, align 8
  store i32 2, i32* %78, align 4
  br label %79

79:                                               ; preds = %64, %61, %57
  %80 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  ret %struct.perf_guest_switch_msr* %80
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
