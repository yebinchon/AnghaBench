; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fepll = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_cpu_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_cpu_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_fepll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw* %9)
  store %struct.clk_fepll* %10, %struct.clk_fepll** %5, align 8
  %11 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %12 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %17 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %15, i32 %19, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %23 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %21, %25
  %27 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %28 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %26, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 10
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 12
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @clk_fepll_vco_calc_rate(%struct.clk_fepll* %44, i64 %45)
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @do_div(i64 %49, i32 %50)
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_fepll_vco_calc_rate(%struct.clk_fepll*, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
