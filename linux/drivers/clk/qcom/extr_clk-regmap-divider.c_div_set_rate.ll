; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-divider.c_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-divider.c_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_regmap = type { i32 }

@CLK_DIVIDER_ROUND_CLOSEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_regmap_div*, align 8
  %8 = alloca %struct.clk_regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_regmap_div* @to_clk_regmap_div(%struct.clk_hw* %10)
  store %struct.clk_regmap_div* %11, %struct.clk_regmap_div** %7, align 8
  %12 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %13 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %12, i32 0, i32 3
  store %struct.clk_regmap* %13, %struct.clk_regmap** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %17 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CLK_DIVIDER_ROUND_CLOSEST, align 4
  %20 = call i32 @divider_get_val(i64 %14, i64 %15, i32* null, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %22 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %25 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %28 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %33 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.clk_regmap_div*, %struct.clk_regmap_div** %7, align 8
  %38 = getelementptr inbounds %struct.clk_regmap_div, %struct.clk_regmap_div* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %36, %39
  %41 = call i32 @regmap_update_bits(i32 %23, i32 %26, i32 %35, i32 %40)
  ret i32 %41
}

declare dso_local %struct.clk_regmap_div* @to_clk_regmap_div(%struct.clk_hw*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
