; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tcon_ch1_clk = type { i32, i32 }

@TCON_CH1_SCLK2_DIV_MASK = common dso_local global i32 0, align 4
@TCON_CH1_SCLK1_HALF_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @tcon_ch1_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcon_ch1_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tcon_ch1_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw* %12)
  store %struct.tcon_ch1_clk* %13, %struct.tcon_ch1_clk** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @tcon_ch1_calc_divider(i64 %14, i64 %15, i32* %10, i32* %9)
  %17 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %7, align 8
  %18 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %7, align 8
  %22 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @TCON_CH1_SCLK2_DIV_MASK, align 4
  %26 = load i32, i32* @TCON_CH1_SCLK1_HALF_BIT, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @TCON_CH1_SCLK2_DIV_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* @TCON_CH1_SCLK1_HALF_BIT, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %3
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %7, align 8
  %46 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @writel(i32 %44, i32 %47)
  %49 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %7, align 8
  %50 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret i32 0
}

declare dso_local %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw*) #1

declare dso_local i32 @tcon_ch1_calc_divider(i64, i64, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
