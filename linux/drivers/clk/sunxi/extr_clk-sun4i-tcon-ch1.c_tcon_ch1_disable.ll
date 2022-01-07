; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tcon_ch1_clk = type { i32, i32 }

@TCON_CH1_SCLK2_GATE_BIT = common dso_local global i32 0, align 4
@TCON_CH1_SCLK1_GATE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @tcon_ch1_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcon_ch1_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tcon_ch1_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw* %6)
  store %struct.tcon_ch1_clk* %7, %struct.tcon_ch1_clk** %3, align 8
  %8 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %3, align 8
  %9 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %3, align 8
  %13 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @TCON_CH1_SCLK2_GATE_BIT, align 4
  %17 = load i32, i32* @TCON_CH1_SCLK1_GATE_BIT, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %3, align 8
  %24 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel(i32 %22, i32 %25)
  %27 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %3, align 8
  %28 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw*) #1

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
