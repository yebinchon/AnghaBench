; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_therm_throt.c_intel_thermal_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_therm_throt.c_intel_thermal_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_HWP = common dso_local global i32 0, align 4
@MSR_HWP_STATUS = common dso_local global i32 0, align 4
@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@THERM_STATUS_PROCHOT = common dso_local global i32 0, align 4
@THERMAL_THROTTLING_EVENT = common dso_local global i32 0, align 4
@CORE_LEVEL = common dso_local global i32 0, align 4
@X86_FEATURE_PLN = common dso_local global i32 0, align 4
@int_pln_enable = common dso_local global i64 0, align 8
@THERM_STATUS_POWER_LIMIT = common dso_local global i32 0, align 4
@POWER_LIMIT_EVENT = common dso_local global i32 0, align 4
@X86_FEATURE_PTS = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_STATUS = common dso_local global i32 0, align 4
@PACKAGE_THERM_STATUS_PROCHOT = common dso_local global i32 0, align 4
@PACKAGE_LEVEL = common dso_local global i32 0, align 4
@PACKAGE_THERM_STATUS_POWER_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_thermal_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_thermal_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X86_FEATURE_HWP, align 4
  %3 = call i64 @static_cpu_has(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @MSR_HWP_STATUS, align 4
  %7 = call i32 @wrmsrl_safe(i32 %6, i32 0)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @rdmsrl(i32 %9, i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @notify_thresholds(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @THERM_STATUS_PROCHOT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @THERMAL_THROTTLING_EVENT, align 4
  %18 = load i32, i32* @CORE_LEVEL, align 4
  %19 = call i32 @therm_throt_process(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @X86_FEATURE_PLN, align 4
  %21 = call i64 @this_cpu_has(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %8
  %24 = load i64, i64* @int_pln_enable, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @THERM_STATUS_POWER_LIMIT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @POWER_LIMIT_EVENT, align 4
  %31 = load i32, i32* @CORE_LEVEL, align 4
  %32 = call i32 @therm_throt_process(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %23, %8
  %34 = load i32, i32* @X86_FEATURE_PTS, align 4
  %35 = call i64 @this_cpu_has(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @rdmsrl(i32 %38, i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @notify_package_thresholds(i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @PACKAGE_THERM_STATUS_PROCHOT, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @THERMAL_THROTTLING_EVENT, align 4
  %47 = load i32, i32* @PACKAGE_LEVEL, align 4
  %48 = call i32 @therm_throt_process(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @X86_FEATURE_PLN, align 4
  %50 = call i64 @this_cpu_has(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load i64, i64* @int_pln_enable, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @PACKAGE_THERM_STATUS_POWER_LIMIT, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @POWER_LIMIT_EVENT, align 4
  %60 = load i32, i32* @PACKAGE_LEVEL, align 4
  %61 = call i32 @therm_throt_process(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %52, %37
  br label %63

63:                                               ; preds = %62, %33
  ret void
}

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i32 @wrmsrl_safe(i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @notify_thresholds(i32) #1

declare dso_local i32 @therm_throt_process(i32, i32, i32) #1

declare dso_local i64 @this_cpu_has(i32) #1

declare dso_local i32 @notify_package_thresholds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
