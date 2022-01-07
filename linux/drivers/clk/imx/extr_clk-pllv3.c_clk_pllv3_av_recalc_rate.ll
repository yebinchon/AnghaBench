; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pllv3_av_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv3_av_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pllv3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %10)
  store %struct.clk_pllv3* %11, %struct.clk_pllv3** %5, align 8
  %12 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %13 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %16 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = call i64 @readl_relaxed(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %21 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %24 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i64 @readl_relaxed(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %29 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @readl_relaxed(i64 %30)
  %32 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %33 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = mul i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @do_div(i64 %40, i64 %41)
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %43, %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  ret i64 %47
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
