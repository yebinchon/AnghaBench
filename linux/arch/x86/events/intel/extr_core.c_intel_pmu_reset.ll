; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.debug_store = type { i32, i32 }

@cpu_hw_events = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"clearing PMU state on CPU#%d\0A\00", align 1
@MSR_ARCH_PERFMON_FIXED_CTR0 = common dso_local global i64 0, align 8
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@DEBUGCTLMSR_FREEZE_LBRS_ON_PMI = common dso_local global i32 0, align 4
@DEBUGCTLMSR_LBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_reset() #0 {
  %1 = alloca %struct.debug_store*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_hw_events, i32 0, i32 0), align 4
  %5 = call %struct.debug_store* @__this_cpu_read(i32 %4)
  store %struct.debug_store* %5, %struct.debug_store** %1, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %73

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32 (...) @smp_processor_id()
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @x86_pmu_config_addr(i32 %19)
  %21 = call i32 @wrmsrl_safe(i64 %20, i64 0)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @x86_pmu_event_addr(i32 %22)
  %24 = call i32 @wrmsrl_safe(i64 %23, i64 0)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 1), align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* @MSR_ARCH_PERFMON_FIXED_CTR0, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @wrmsrl_safe(i64 %37, i64 0)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load %struct.debug_store*, %struct.debug_store** %1, align 8
  %44 = icmp ne %struct.debug_store* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.debug_store*, %struct.debug_store** %1, align 8
  %47 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.debug_store*, %struct.debug_store** %1, align 8
  %50 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 2), align 8
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 (...) @intel_pmu_get_status()
  %56 = call i32 @intel_pmu_ack_status(i32 %55)
  %57 = load i32, i32* @MSR_CORE_PERF_GLOBAL_CTRL, align 4
  %58 = call i32 @wrmsrl(i32 %57, i32 0)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 3), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = call i32 (...) @get_debugctlmsr()
  %64 = load i32, i32* @DEBUGCTLMSR_FREEZE_LBRS_ON_PMI, align 4
  %65 = load i32, i32* @DEBUGCTLMSR_LBR, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %63, %67
  %69 = call i32 @update_debugctlmsr(i32 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  br label %73

73:                                               ; preds = %70, %8
  ret void
}

declare dso_local %struct.debug_store* @__this_cpu_read(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @wrmsrl_safe(i64, i64) #1

declare dso_local i64 @x86_pmu_config_addr(i32) #1

declare dso_local i64 @x86_pmu_event_addr(i32) #1

declare dso_local i32 @intel_pmu_ack_status(i32) #1

declare dso_local i32 @intel_pmu_get_status(...) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @update_debugctlmsr(i32) #1

declare dso_local i32 @get_debugctlmsr(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
