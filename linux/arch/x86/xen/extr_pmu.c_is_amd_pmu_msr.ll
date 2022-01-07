; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_is_amd_pmu_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_is_amd_pmu_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_F15H_PERF_CTL = common dso_local global i32 0, align 4
@MSR_F15H_PERF_CTR = common dso_local global i32 0, align 4
@amd_num_counters = common dso_local global i32 0, align 4
@MSR_K7_EVNTSEL0 = common dso_local global i32 0, align 4
@MSR_K7_PERFCTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_amd_pmu_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_amd_pmu_msr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MSR_F15H_PERF_CTL, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MSR_F15H_PERF_CTR, align 4
  %10 = load i32, i32* @amd_num_counters, align 4
  %11 = mul nsw i32 %10, 2
  %12 = add nsw i32 %9, %11
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %7, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MSR_K7_EVNTSEL0, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MSR_K7_PERFCTR0, align 4
  %21 = load i32, i32* @amd_num_counters, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %7
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
