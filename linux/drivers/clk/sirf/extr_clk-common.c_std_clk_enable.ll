; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_std_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_std_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_std = type { i32 }

@SIRFSOC_CLKC_CLK_EN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @std_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_std*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_std* @to_stdclk(%struct.clk_hw* %7)
  store %struct.clk_std* %8, %struct.clk_std** %6, align 8
  %9 = load %struct.clk_std*, %struct.clk_std** %6, align 8
  %10 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.clk_std*, %struct.clk_std** %6, align 8
  %15 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 63
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ true, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.clk_std*, %struct.clk_std** %6, align 8
  %23 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %24, 32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.clk_std*, %struct.clk_std** %6, align 8
  %27 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @SIRFSOC_CLKC_CLK_EN0, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @clkc_readl(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @clkc_writel(i32 %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.clk_std* @to_stdclk(%struct.clk_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clkc_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
