; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pm_cpu = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pm_cpu_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pm_cpu_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_pm_cpu*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw* %5)
  store %struct.clk_pm_cpu* %6, %struct.clk_pm_cpu** %3, align 8
  %7 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @armada_3700_pm_dvfs_is_enabled(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %3, align 8
  %14 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @armada_3700_pm_dvfs_get_cpu_parent(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %3, align 8
  %19 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  %22 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %3, align 8
  %23 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %3, align 8
  %27 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw*) #1

declare dso_local i64 @armada_3700_pm_dvfs_is_enabled(i32) #1

declare dso_local i32 @armada_3700_pm_dvfs_get_cpu_parent(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
