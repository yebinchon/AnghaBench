; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.cpu_hw_events = type { %struct.perf_event**, i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@apic_perf_irqs = common dso_local global i32 0, align 4
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_DM_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @p4_pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_pmu_handle_irq(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.perf_sample_data, align 4
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %11, %struct.cpu_hw_events** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %87, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @__test_and_clear_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %87

34:                                               ; preds = %16
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 0
  %37 = load %struct.perf_event**, %struct.perf_event*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %37, i64 %39
  %41 = load %struct.perf_event*, %struct.perf_event** %40, align 8
  store %struct.perf_event* %41, %struct.perf_event** %5, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  store %struct.hw_perf_event* %43, %struct.hw_perf_event** %6, align 8
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON_ONCE(i32 %49)
  %51 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %52 = call i32 @p4_pmu_clear_cccr_ovf(%struct.hw_perf_event* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %54 = call i64 @x86_perf_event_update(%struct.perf_event* %53)
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %34
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 4
  %60 = sub nsw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = and i64 %58, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %87

66:                                               ; preds = %57, %34
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %3, i32 0, i32 %72)
  %74 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %75 = call i32 @x86_perf_event_set_period(%struct.perf_event* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %87

78:                                               ; preds = %66
  %79 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %81 = call i64 @perf_event_overflow(%struct.perf_event* %79, %struct.perf_sample_data* %3, %struct.pt_regs* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %85 = call i32 @x86_pmu_stop(%struct.perf_event* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %77, %65, %33
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %12

90:                                               ; preds = %12
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @apic_perf_irqs, align 4
  %95 = call i32 @inc_irq_stat(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @APIC_LVTPC, align 4
  %98 = load i32, i32* @APIC_DM_NMI, align 4
  %99 = call i32 @apic_write(i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @p4_pmu_clear_cccr_ovf(%struct.hw_perf_event*) #1

declare dso_local i64 @x86_perf_event_update(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @x86_perf_event_set_period(%struct.perf_event*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @x86_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
