; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tcon_ch1_clk = type { i32 }

@TCON_CH1_SCLK2_DIV_MASK = common dso_local global i32 0, align 4
@TCON_CH1_SCLK1_HALF_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @tcon_ch1_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcon_ch1_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcon_ch1_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw* %7)
  store %struct.tcon_ch1_clk* %8, %struct.tcon_ch1_clk** %5, align 8
  %9 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %5, align 8
  %10 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TCON_CH1_SCLK2_DIV_MASK, align 4
  %15 = and i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %4, align 8
  %19 = udiv i64 %18, %17
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TCON_CH1_SCLK1_HALF_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 2
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
