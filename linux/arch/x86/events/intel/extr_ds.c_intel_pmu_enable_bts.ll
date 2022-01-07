; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_enable_bts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_enable_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUGCTLMSR_TR = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTS = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTINT = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTS_OFF_OS = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTS_OFF_USR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_enable_bts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @get_debugctlmsr()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* @DEBUGCTLMSR_TR, align 8
  %6 = load i64, i64* %3, align 8
  %7 = or i64 %6, %5
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @DEBUGCTLMSR_BTS, align 8
  %9 = load i64, i64* %3, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* @DEBUGCTLMSR_BTINT, align 8
  %17 = load i64, i64* %3, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_OS, align 8
  %26 = load i64, i64* %3, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_USR, align 8
  %35 = load i64, i64* %3, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @update_debugctlmsr(i64 %38)
  ret void
}

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
