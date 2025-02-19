; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_std_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_std_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_std = type { i32 }

@SIRFSOC_CLKC_CLK_EN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @std_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_std*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_std* @to_stdclk(%struct.clk_hw* %6)
  store %struct.clk_std* %7, %struct.clk_std** %5, align 8
  %8 = load %struct.clk_std*, %struct.clk_std** %5, align 8
  %9 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = srem i32 %10, 32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.clk_std*, %struct.clk_std** %5, align 8
  %13 = getelementptr inbounds %struct.clk_std, %struct.clk_std* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @SIRFSOC_CLKC_CLK_EN0, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @clkc_readl(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local %struct.clk_std* @to_stdclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
