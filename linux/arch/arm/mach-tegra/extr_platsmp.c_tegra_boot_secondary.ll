; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@CONFIG_ARCH_TEGRA_2x_SOC = common dso_local global i32 0, align 4
@TEGRA20 = common dso_local global i64 0, align 8
@CONFIG_ARCH_TEGRA_3x_SOC = common dso_local global i32 0, align 4
@TEGRA30 = common dso_local global i64 0, align 8
@CONFIG_ARCH_TEGRA_114_SOC = common dso_local global i32 0, align 4
@TEGRA114 = common dso_local global i64 0, align 8
@CONFIG_ARCH_TEGRA_124_SOC = common dso_local global i32 0, align 4
@TEGRA124 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @tegra_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load i32, i32* @CONFIG_ARCH_TEGRA_2x_SOC, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = call i64 (...) @tegra_get_chip_id()
  %11 = load i64, i64* @TEGRA20, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = call i32 @tegra20_boot_secondary(i32 %14, %struct.task_struct* %15)
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %9, %2
  %18 = load i32, i32* @CONFIG_ARCH_TEGRA_3x_SOC, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = call i64 (...) @tegra_get_chip_id()
  %23 = load i64, i64* @TEGRA30, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call i32 @tegra30_boot_secondary(i32 %26, %struct.task_struct* %27)
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %21, %17
  %30 = load i32, i32* @CONFIG_ARCH_TEGRA_114_SOC, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = call i64 (...) @tegra_get_chip_id()
  %35 = load i64, i64* @TEGRA114, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = call i32 @tegra114_boot_secondary(i32 %38, %struct.task_struct* %39)
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %33, %29
  %42 = load i32, i32* @CONFIG_ARCH_TEGRA_124_SOC, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i64 (...) @tegra_get_chip_id()
  %47 = load i64, i64* @TEGRA124, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = call i32 @tegra114_boot_secondary(i32 %50, %struct.task_struct* %51)
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %45, %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %49, %37, %25, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @tegra_get_chip_id(...) #1

declare dso_local i32 @tegra20_boot_secondary(i32, %struct.task_struct*) #1

declare dso_local i32 @tegra30_boot_secondary(i32, %struct.task_struct*) #1

declare dso_local i32 @tegra114_boot_secondary(i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
