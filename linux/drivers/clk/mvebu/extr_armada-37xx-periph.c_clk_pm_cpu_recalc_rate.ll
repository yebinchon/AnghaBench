; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pm_cpu = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pm_cpu_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pm_cpu_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pm_cpu*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw* %7)
  store %struct.clk_pm_cpu* %8, %struct.clk_pm_cpu** %5, align 8
  %9 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %5, align 8
  %10 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @armada_3700_pm_dvfs_is_enabled(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %5, align 8
  %16 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @armada_3700_pm_dvfs_get_cpu_div(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %5, align 8
  %21 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %5, align 8
  %24 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_div(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @DIV_ROUND_UP_ULL(i32 %29, i32 %30)
  ret i64 %31
}

declare dso_local %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw*) #1

declare dso_local i64 @armada_3700_pm_dvfs_is_enabled(i32) #1

declare dso_local i32 @armada_3700_pm_dvfs_get_cpu_div(i32) #1

declare dso_local i32 @get_div(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
