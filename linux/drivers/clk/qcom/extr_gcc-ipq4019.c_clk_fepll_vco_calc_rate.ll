; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_fepll_vco_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_fepll_vco_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_fepll = type { %struct.TYPE_4__, %struct.clk_fepll_vco* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.clk_fepll_vco = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_fepll*, i64)* @clk_fepll_vco_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fepll_vco_calc_rate(%struct.clk_fepll* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_fepll*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_fepll_vco*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_fepll* %0, %struct.clk_fepll** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_fepll*, %struct.clk_fepll** %3, align 8
  %11 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %10, i32 0, i32 1
  %12 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %11, align 8
  store %struct.clk_fepll_vco* %12, %struct.clk_fepll_vco** %5, align 8
  %13 = load %struct.clk_fepll*, %struct.clk_fepll** %3, align 8
  %14 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %5, align 8
  %19 = getelementptr inbounds %struct.clk_fepll_vco, %struct.clk_fepll_vco* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_read(i32 %17, i32 %20, i32* %8)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %5, align 8
  %24 = getelementptr inbounds %struct.clk_fepll_vco, %struct.clk_fepll_vco* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  %27 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %5, align 8
  %28 = getelementptr inbounds %struct.clk_fepll_vco, %struct.clk_fepll_vco* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %26, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %5, align 8
  %35 = getelementptr inbounds %struct.clk_fepll_vco, %struct.clk_fepll_vco* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = load %struct.clk_fepll_vco*, %struct.clk_fepll_vco** %5, align 8
  %39 = getelementptr inbounds %struct.clk_fepll_vco, %struct.clk_fepll_vco* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %37, %42
  store i32 %43, i32* %6, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
