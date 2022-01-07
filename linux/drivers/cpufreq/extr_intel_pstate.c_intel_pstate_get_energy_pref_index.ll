; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_energy_pref_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_energy_pref_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@X86_FEATURE_HWP_EPP = common dso_local global i32 0, align 4
@HWP_EPP_PERFORMANCE = common dso_local global i32 0, align 4
@HWP_EPP_BALANCE_PERFORMANCE = common dso_local global i32 0, align 4
@HWP_EPP_BALANCE_POWERSAVE = common dso_local global i32 0, align 4
@X86_FEATURE_EPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpudata*)* @intel_pstate_get_energy_pref_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_get_energy_pref_index(%struct.cpudata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpudata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %9 = call i32 @intel_pstate_get_epp(%struct.cpudata* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @X86_FEATURE_HWP_EPP, align 4
  %16 = call i64 @boot_cpu_has(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HWP_EPP_PERFORMANCE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %45

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HWP_EPP_BALANCE_PERFORMANCE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 2, i32* %2, align 4
  br label %45

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HWP_EPP_BALANCE_POWERSAVE, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 3, i32* %2, align 4
  br label %45

33:                                               ; preds = %28
  store i32 4, i32* %2, align 4
  br label %45

34:                                               ; preds = %14
  %35 = load i32, i32* @X86_FEATURE_EPB, align 4
  %36 = call i64 @boot_cpu_has(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 2
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %33, %32, %27, %22, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @intel_pstate_get_epp(%struct.cpudata*, i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
