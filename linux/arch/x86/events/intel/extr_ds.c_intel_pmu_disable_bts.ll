; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_disable_bts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_disable_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@DEBUGCTLMSR_TR = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTS = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTINT = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTS_OFF_OS = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTS_OFF_USR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_disable_bts() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = alloca i64, align 8
  %3 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %3, %struct.cpu_hw_events** %1, align 8
  %4 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %5 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %25

9:                                                ; preds = %0
  %10 = call i64 (...) @get_debugctlmsr()
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* @DEBUGCTLMSR_TR, align 8
  %12 = load i64, i64* @DEBUGCTLMSR_BTS, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @DEBUGCTLMSR_BTINT, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_OS, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_USR, align 8
  %19 = or i64 %17, %18
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %2, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @update_debugctlmsr(i64 %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
