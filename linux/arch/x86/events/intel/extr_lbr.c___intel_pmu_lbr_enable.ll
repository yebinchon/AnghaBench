; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cpu_hw_events = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MSR_LBR_SELECT = common dso_local global i32 0, align 4
@MSR_IA32_DEBUGCTLMSR = common dso_local global i32 0, align 4
@DEBUGCTLMSR_LBR = common dso_local global i32 0, align 4
@LBR_CALL_STACK = common dso_local global i32 0, align 4
@DEBUGCTLMSR_FREEZE_LBRS_ON_PMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__intel_pmu_lbr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_lbr_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %63

14:                                               ; preds = %10, %1
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @MSR_LBR_SELECT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wrmsrl(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30, %27
  %40 = load i32, i32* @MSR_IA32_DEBUGCTLMSR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rdmsrl(i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @DEBUGCTLMSR_LBR, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @LBR_CALL_STACK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @DEBUGCTLMSR_FREEZE_LBRS_ON_PMI, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %39
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @MSR_IA32_DEBUGCTLMSR, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wrmsrl(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %13, %59, %55
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
