; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra20_cpufreq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra20_cpufreq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra20_cpufreq = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra20_cpufreq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_cpufreq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra20_cpufreq*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tegra20_cpufreq* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tegra20_cpufreq* %5, %struct.tegra20_cpufreq** %3, align 8
  %6 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %3, align 8
  %7 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %6, i32 0, i32 3
  %8 = call i32 @cpufreq_unregister_driver(i32* %7)
  %9 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %3, align 8
  %10 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_put(i32 %11)
  %13 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %3, align 8
  %14 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_put(i32 %15)
  %17 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %3, align 8
  %18 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_put(i32 %19)
  ret i32 0
}

declare dso_local %struct.tegra20_cpufreq* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cpufreq_unregister_driver(i32*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
