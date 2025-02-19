; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_super_mux = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.clk_hw*, i64, i64)* }
%struct.TYPE_3__ = type { %struct.clk_hw }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_super_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_super_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_clk_super_mux*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw* %9)
  store %struct.tegra_clk_super_mux* %10, %struct.tegra_clk_super_mux** %7, align 8
  %11 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %7, align 8
  %12 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.clk_hw* %13, %struct.clk_hw** %8, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %14, %struct.clk_hw* %15)
  %17 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %7, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %20, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 %21(%struct.clk_hw* %22, i64 %23, i64 %24)
  ret i32 %25
}

declare dso_local %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
