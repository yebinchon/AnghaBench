; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_pllclk_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_pllclk_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axxia_clk = type { i32 }
%struct.axxia_pllclk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @axxia_pllclk_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @axxia_pllclk_recalc(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.axxia_clk*, align 8
  %6 = alloca %struct.axxia_pllclk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw* %12)
  store %struct.axxia_clk* %13, %struct.axxia_clk** %5, align 8
  %14 = load %struct.axxia_clk*, %struct.axxia_clk** %5, align 8
  %15 = call %struct.axxia_pllclk* @to_axxia_pllclk(%struct.axxia_clk* %14)
  store %struct.axxia_pllclk* %15, %struct.axxia_pllclk** %6, align 8
  %16 = load %struct.axxia_clk*, %struct.axxia_clk** %5, align 8
  %17 = getelementptr inbounds %struct.axxia_clk, %struct.axxia_clk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.axxia_pllclk*, %struct.axxia_pllclk** %6, align 8
  %20 = getelementptr inbounds %struct.axxia_pllclk, %struct.axxia_pllclk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_read(i32 %18, i32 %21, i32* %11)
  %23 = load i32, i32* %11, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 15
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 4095
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 31
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = mul i64 %39, %40
  %42 = udiv i64 %38, %41
  %43 = load i64, i64* %8, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw*) #1

declare dso_local %struct.axxia_pllclk* @to_axxia_pllclk(%struct.axxia_clk*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
