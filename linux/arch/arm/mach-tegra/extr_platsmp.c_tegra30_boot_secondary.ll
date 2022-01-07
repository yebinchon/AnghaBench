; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra30_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra30_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@tegra_cpu_init_mask = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @tegra30_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra30_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cpu_logical_map(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @tegra_put_cpu_in_reset(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @flowctrl_write_cpu_halt(i32 %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @cpumask_test_cpu(i32 %14, i32* @tegra_cpu_init_mask)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i64 @msecs_to_jiffies(i32 50)
  %20 = add i64 %18, %19
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %28, %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @tegra_pmc_cpu_is_powered(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %42

26:                                               ; preds = %21
  %27 = call i32 @udelay(i32 10)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @tegra_pmc_cpu_power_on(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @tegra_enable_cpu_clock(i32 %43)
  %45 = call i32 @udelay(i32 10)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @tegra_pmc_cpu_remove_clamping(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %42
  %53 = call i32 @udelay(i32 10)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @flowctrl_write_cpu_csr(i32 %54, i32 0)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @tegra_cpu_out_of_reset(i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %50, %39
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @tegra_put_cpu_in_reset(i32) #1

declare dso_local i32 @flowctrl_write_cpu_halt(i32, i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @tegra_pmc_cpu_is_powered(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @tegra_pmc_cpu_power_on(i32) #1

declare dso_local i32 @tegra_enable_cpu_clock(i32) #1

declare dso_local i32 @tegra_pmc_cpu_remove_clamping(i32) #1

declare dso_local i32 @flowctrl_write_cpu_csr(i32, i32) #1

declare dso_local i32 @tegra_cpu_out_of_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
