; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_DM_NMI = common dso_local global i32 0, align 4
@intel_pmu_handle_irq.warned = internal global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"perfevents: irq loop stuck!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @intel_pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_handle_irq(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %8 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %8, %struct.cpu_hw_events** %3, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @APIC_LVTPC, align 4
  %16 = load i32, i32* @APIC_DM_NMI, align 4
  %17 = call i32 @apic_write(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = call i32 (...) @intel_bts_disable_local()
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = call i32 (...) @__intel_pmu_disable_all()
  %23 = call i32 (...) @intel_pmu_drain_bts_buffer()
  store i32 %23, i32* %6, align 4
  %24 = call i64 (...) @intel_bts_interrupt()
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = call i64 (...) @intel_pmu_get_status()
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %62

33:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = call i32 (...) @intel_pmu_lbr_read()
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @intel_pmu_ack_status(i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = icmp sgt i32 %39, 100
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @intel_pmu_handle_irq.warned, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @perf_event_print_debug()
  store i32 1, i32* @intel_pmu_handle_irq.warned, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 (...) @intel_pmu_reset()
  br label %62

49:                                               ; preds = %34
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @handle_pmi_common(%struct.pt_regs* %50, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = call i64 (...) @intel_pmu_get_status()
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %34

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %47, %32
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %65 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @__intel_pmu_enable_all(i32 0, i32 1)
  br label %70

70:                                               ; preds = %68, %62
  %71 = call i32 (...) @intel_bts_enable_local()
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @APIC_LVTPC, align 4
  %76 = load i32, i32* @APIC_DM_NMI, align 4
  %77 = call i32 @apic_write(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @intel_bts_disable_local(...) #1

declare dso_local i32 @__intel_pmu_disable_all(...) #1

declare dso_local i32 @intel_pmu_drain_bts_buffer(...) #1

declare dso_local i64 @intel_bts_interrupt(...) #1

declare dso_local i64 @intel_pmu_get_status(...) #1

declare dso_local i32 @intel_pmu_lbr_read(...) #1

declare dso_local i32 @intel_pmu_ack_status(i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @perf_event_print_debug(...) #1

declare dso_local i32 @intel_pmu_reset(...) #1

declare dso_local i64 @handle_pmi_common(%struct.pt_regs*, i64) #1

declare dso_local i32 @__intel_pmu_enable_all(i32, i32) #1

declare dso_local i32 @intel_bts_enable_local(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
