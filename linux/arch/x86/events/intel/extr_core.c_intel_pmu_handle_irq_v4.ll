; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_handle_irq_v4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_handle_irq_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i32 0, align 4
@intel_pmu_handle_irq_v4.warned = internal global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"perfevents: irq loop stuck!\0A\00", align 1
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_DM_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @intel_pmu_handle_irq_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_handle_irq_v4(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @INTEL_PMC_IDX_FIXED_BTS, align 4
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %17 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %22 = call i32 (...) @intel_bts_disable_local()
  %23 = call i32 (...) @intel_pmu_drain_bts_buffer()
  store i32 %23, i32* %4, align 4
  %24 = call i64 (...) @intel_bts_interrupt()
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %1
  %30 = call i64 (...) @intel_pmu_get_status()
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %56

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %69, %34
  %36 = call i32 (...) @intel_pmu_lbr_read()
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = icmp sgt i32 %38, 100
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @intel_pmu_handle_irq_v4.warned, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (...) @perf_event_print_debug()
  store i32 1, i32* @intel_pmu_handle_irq_v4.warned, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = call i32 (...) @intel_pmu_reset()
  br label %56

48:                                               ; preds = %35
  %49 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @handle_pmi_common(%struct.pt_regs* %49, i64 %50)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %46, %33
  %57 = load i32, i32* @APIC_LVTPC, align 4
  %58 = load i32, i32* @APIC_DM_NMI, align 4
  %59 = call i32 @apic_write(i32 %57, i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @intel_pmu_ack_status(i64 %63)
  br label %71

65:                                               ; preds = %56
  %66 = call i64 (...) @intel_pmu_get_status()
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %35

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @intel_bts_enable_local()
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %79 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @intel_bts_disable_local(...) #1

declare dso_local i32 @intel_pmu_drain_bts_buffer(...) #1

declare dso_local i64 @intel_bts_interrupt(...) #1

declare dso_local i64 @intel_pmu_get_status(...) #1

declare dso_local i32 @intel_pmu_lbr_read(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @perf_event_print_debug(...) #1

declare dso_local i32 @intel_pmu_reset(...) #1

declare dso_local i64 @handle_pmi_common(%struct.pt_regs*, i64) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @intel_pmu_ack_status(i64) #1

declare dso_local i32 @intel_bts_enable_local(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
