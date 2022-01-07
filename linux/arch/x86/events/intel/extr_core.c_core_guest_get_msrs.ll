; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_core_guest_get_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_core_guest_get_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.perf_guest_switch_msr = type { i32, i32, i32 }
%struct.cpu_hw_events = type { i32, %struct.perf_event**, %struct.perf_guest_switch_msr* }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_guest_switch_msr* (i32*)* @core_guest_get_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_guest_switch_msr* @core_guest_get_msrs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_guest_switch_msr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %3, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 2
  %10 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %9, align 8
  store %struct.perf_guest_switch_msr* %10, %struct.perf_guest_switch_msr** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %11
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %17 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %16, i32 0, i32 1
  %18 = load %struct.perf_event**, %struct.perf_event*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %18, i64 %20
  %22 = load %struct.perf_event*, %struct.perf_event** %21, align 8
  store %struct.perf_event* %22, %struct.perf_event** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @x86_pmu_config_addr(i32 %23)
  %25 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %25, i64 %27
  %29 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %28, i32 0, i32 2
  store i32 %24, i32* %29, align 4
  %30 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %30, i64 %32
  %34 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %35, i64 %37
  %39 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %42 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @test_bit(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %15
  br label %97

47:                                               ; preds = %15
  %48 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %54, i64 %56
  %58 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  %59 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %59, i64 %61
  %63 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %62, i32 0, i32 0
  store i32 %53, i32* %63, align 4
  %64 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %47
  %70 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %72, i64 %74
  %76 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %96

79:                                               ; preds = %47
  %80 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %81 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %88, i64 %90
  %92 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %87
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %85, %79
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %11

100:                                              ; preds = %11
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %102 = load i32*, i32** %2, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %4, align 8
  ret %struct.perf_guest_switch_msr* %103
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @x86_pmu_config_addr(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
