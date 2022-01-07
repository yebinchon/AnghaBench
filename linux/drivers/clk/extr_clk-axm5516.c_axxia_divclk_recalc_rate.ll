; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_divclk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_divclk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axxia_clk = type { i32 }
%struct.axxia_divclk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @axxia_divclk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @axxia_divclk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.axxia_clk*, align 8
  %6 = alloca %struct.axxia_divclk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw* %9)
  store %struct.axxia_clk* %10, %struct.axxia_clk** %5, align 8
  %11 = load %struct.axxia_clk*, %struct.axxia_clk** %5, align 8
  %12 = call %struct.axxia_divclk* @to_axxia_divclk(%struct.axxia_clk* %11)
  store %struct.axxia_divclk* %12, %struct.axxia_divclk** %6, align 8
  %13 = load %struct.axxia_clk*, %struct.axxia_clk** %5, align 8
  %14 = getelementptr inbounds %struct.axxia_clk, %struct.axxia_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.axxia_divclk*, %struct.axxia_divclk** %6, align 8
  %17 = getelementptr inbounds %struct.axxia_divclk, %struct.axxia_divclk* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %7)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.axxia_divclk*, %struct.axxia_divclk** %6, align 8
  %22 = getelementptr inbounds %struct.axxia_divclk, %struct.axxia_divclk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %20, %23
  %25 = load %struct.axxia_divclk*, %struct.axxia_divclk** %6, align 8
  %26 = getelementptr inbounds %struct.axxia_divclk, %struct.axxia_divclk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %24, %29
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %32, %34
  ret i64 %35
}

declare dso_local %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw*) #1

declare dso_local %struct.axxia_divclk* @to_axxia_divclk(%struct.axxia_clk*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
