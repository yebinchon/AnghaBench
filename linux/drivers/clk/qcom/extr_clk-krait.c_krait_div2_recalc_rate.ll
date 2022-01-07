; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_div2_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_div2_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.krait_div2_clk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @krait_div2_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krait_div2_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.krait_div2_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.krait_div2_clk* @to_krait_div2_clk(%struct.clk_hw* %8)
  store %struct.krait_div2_clk* %9, %struct.krait_div2_clk** %5, align 8
  %10 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %5, align 8
  %11 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %5, align 8
  %16 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @krait_get_l2_indirect_reg(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %5, align 8
  %20 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @DIV_ROUND_UP(i64 %30, i32 %31)
  ret i64 %32
}

declare dso_local %struct.krait_div2_clk* @to_krait_div2_clk(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @krait_get_l2_indirect_reg(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
