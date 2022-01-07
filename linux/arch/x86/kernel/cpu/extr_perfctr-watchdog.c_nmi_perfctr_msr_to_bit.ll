; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_nmi_perfctr_msr_to_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_nmi_perfctr_msr_to_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MSR_F15H_PERF_CTR = common dso_local global i32 0, align 4
@MSR_K7_PERFCTR0 = common dso_local global i32 0, align 4
@X86_FEATURE_ARCH_PERFMON = common dso_local global i32 0, align 4
@MSR_ARCH_PERFMON_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_P6_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_KNC_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_P4_BPU_PERFCTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nmi_perfctr_msr_to_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmi_perfctr_msr_to_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @boot_cpu_data, i32 0, i32 0), align 4
  switch i32 %4, label %41 [
    i32 129, label %5
    i32 130, label %5
    i32 128, label %18
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MSR_F15H_PERF_CTR, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MSR_F15H_PERF_CTR, align 4
  %12 = sub i32 %10, %11
  %13 = lshr i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MSR_K7_PERFCTR0, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load i32, i32* @X86_FEATURE_ARCH_PERFMON, align 4
  %20 = call i32 @cpu_has(%struct.TYPE_3__* @boot_cpu_data, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MSR_ARCH_PERFMON_PERFCTR0, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @boot_cpu_data, i32 0, i32 1), align 4
  switch i32 %27, label %40 [
    i32 6, label %28
    i32 11, label %32
    i32 15, label %36
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MSR_P6_PERFCTR0, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MSR_KNC_PERFCTR0, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MSR_P4_BPU_PERFCTR0, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36, %32, %28, %22, %14, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @cpu_has(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
