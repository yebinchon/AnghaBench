; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-fixed.c_tegra_clk_periph_fixed_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-fixed.c_tegra_clk_periph_fixed_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_periph_fixed = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @tegra_clk_periph_fixed_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_clk_periph_fixed_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_clk_periph_fixed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.tegra_clk_periph_fixed* @to_tegra_clk_periph_fixed(%struct.clk_hw* %7)
  store %struct.tegra_clk_periph_fixed* %8, %struct.tegra_clk_periph_fixed** %4, align 8
  %9 = load %struct.tegra_clk_periph_fixed*, %struct.tegra_clk_periph_fixed** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_clk_periph_fixed, %struct.tegra_clk_periph_fixed* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = srem i32 %11, 32
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tegra_clk_periph_fixed*, %struct.tegra_clk_periph_fixed** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_periph_fixed, %struct.tegra_clk_periph_fixed* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.tegra_clk_periph_fixed*, %struct.tegra_clk_periph_fixed** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_periph_fixed, %struct.tegra_clk_periph_fixed* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.tegra_clk_periph_fixed*, %struct.tegra_clk_periph_fixed** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_periph_fixed, %struct.tegra_clk_periph_fixed* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tegra_clk_periph_fixed*, %struct.tegra_clk_periph_fixed** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_clk_periph_fixed, %struct.tegra_clk_periph_fixed* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %46

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.tegra_clk_periph_fixed* @to_tegra_clk_periph_fixed(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
