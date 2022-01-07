; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_epb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_epb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_EPB = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSR_IA32_ENERGY_PERF_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @intel_pstate_set_epb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_set_epb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @X86_FEATURE_EPB, align 4
  %9 = call i32 @boot_cpu_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MSR_IA32_ENERGY_PERF_BIAS, align 4
  %17 = call i32 @rdmsrl_on_cpu(i32 %15, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -16
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MSR_IA32_ENERGY_PERF_BIAS, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @wrmsrl_on_cpu(i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %20, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsrl_on_cpu(i32, i32, i32*) #1

declare dso_local i32 @wrmsrl_on_cpu(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
