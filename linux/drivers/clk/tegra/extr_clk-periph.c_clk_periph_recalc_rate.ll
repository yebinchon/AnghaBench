; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph.c_clk_periph_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph.c_clk_periph_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_periph = type { %struct.TYPE_2__, %struct.clk_ops* }
%struct.TYPE_2__ = type { %struct.clk_hw }
%struct.clk_ops = type { i64 (%struct.clk_hw*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_periph_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_periph_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_clk_periph*, align 8
  %6 = alloca %struct.clk_ops*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.tegra_clk_periph* @to_clk_periph(%struct.clk_hw* %8)
  store %struct.tegra_clk_periph* %9, %struct.tegra_clk_periph** %5, align 8
  %10 = load %struct.tegra_clk_periph*, %struct.tegra_clk_periph** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_periph, %struct.tegra_clk_periph* %10, i32 0, i32 1
  %12 = load %struct.clk_ops*, %struct.clk_ops** %11, align 8
  store %struct.clk_ops* %12, %struct.clk_ops** %6, align 8
  %13 = load %struct.tegra_clk_periph*, %struct.tegra_clk_periph** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_clk_periph, %struct.tegra_clk_periph* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.clk_hw* %15, %struct.clk_hw** %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %16, %struct.clk_hw* %17)
  %19 = load %struct.clk_ops*, %struct.clk_ops** %6, align 8
  %20 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %19, i32 0, i32 0
  %21 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %20, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 %21(%struct.clk_hw* %22, i64 %23)
  ret i64 %24
}

declare dso_local %struct.tegra_clk_periph* @to_clk_periph(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
