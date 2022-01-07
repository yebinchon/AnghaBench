; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tcon_ch1_clk = type { i32, i32 }

@TCON_CH1_SCLK2_MUX_MASK = common dso_local global i32 0, align 4
@TCON_CH1_SCLK2_MUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @tcon_ch1_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcon_ch1_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcon_ch1_clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.tcon_ch1_clk* @hw_to_tclk(%struct.clk_hw* %8)
  store %struct.tcon_ch1_clk* %9, %struct.tcon_ch1_clk** %5, align 8
  %10 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %5, align 8
  %11 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %5, align 8
  %15 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @TCON_CH1_SCLK2_MUX_MASK, align 4
  %19 = load i32, i32* @TCON_CH1_SCLK2_MUX_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TCON_CH1_SCLK2_MUX_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %5, align 8
  %31 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel(i32 %29, i32 %32)
  %34 = load %struct.tcon_ch1_clk*, %struct.tcon_ch1_clk** %5, align 8
  %35 = getelementptr inbounds %struct.tcon_ch1_clk, %struct.tcon_ch1_clk* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
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
