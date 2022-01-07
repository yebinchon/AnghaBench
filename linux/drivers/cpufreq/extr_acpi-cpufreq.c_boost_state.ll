; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_boost_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_boost_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE_TURBO_DISABLE = common dso_local global i32 0, align 4
@MSR_K7_HWCR = common dso_local global i32 0, align 4
@MSR_K7_HWCR_CPB_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @boost_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boost_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  switch i32 %7, label %36 [
    i32 128, label %8
    i32 129, label %22
    i32 130, label %22
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %11 = call i32 @rdmsr_on_cpu(i32 %9, i32 %10, i32* %4, i32* %5)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 32
  %15 = or i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MSR_K7_HWCR, align 4
  %25 = call i32 @rdmsr_on_cpu(i32 %23, i32 %24, i32* %4, i32* %5)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 32
  %29 = or i32 %26, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MSR_K7_HWCR_CPB_DIS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %22, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
