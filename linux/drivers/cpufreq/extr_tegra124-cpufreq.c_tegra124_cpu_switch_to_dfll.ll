; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra124-cpufreq.c_tegra124_cpu_switch_to_dfll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra124-cpufreq.c_tegra124_cpu_switch_to_dfll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_cpufreq_priv = type { i32, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_cpufreq_priv*)* @tegra124_cpu_switch_to_dfll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpu_switch_to_dfll(%struct.tegra124_cpufreq_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra124_cpufreq_priv*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra124_cpufreq_priv* %0, %struct.tegra124_cpufreq_priv** %3, align 8
  %6 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %6, i32 0, i32 1
  %8 = load %struct.clk*, %struct.clk** %7, align 8
  %9 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = call i32 @clk_set_rate(%struct.clk* %8, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.clk* @clk_get_parent(i32 %21)
  store %struct.clk* %22, %struct.clk** %4, align 8
  %23 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %24 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %27 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %26, i32 0, i32 2
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = call i32 @clk_set_parent(i32 %25, %struct.clk* %28)
  %30 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %31 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %30, i32 0, i32 1
  %32 = load %struct.clk*, %struct.clk** %31, align 8
  %33 = call i32 @clk_prepare_enable(%struct.clk* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %39 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %42 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %41, i32 0, i32 1
  %43 = load %struct.clk*, %struct.clk** %42, align 8
  %44 = call i32 @clk_set_parent(i32 %40, %struct.clk* %43)
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %36
  %46 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %3, align 8
  %47 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = call i32 @clk_set_parent(i32 %48, %struct.clk* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %37, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
