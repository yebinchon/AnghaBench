; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_lcd_dma.c_omap_setup_lcd_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_lcd_dma.c_omap_setup_lcd_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@lcd_dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@OMAP1610_DMA_LCD_CCR = common dso_local global i32 0, align 4
@OMAP1610_DMA_LCD_CSDP = common dso_local global i32 0, align 4
@OMAP1610_DMA_LCD_LCH_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_setup_lcd_dma() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcd_dma, i32 0, i32 1), align 4
  %3 = call i32 @BUG_ON(i32 %2)
  %4 = call i32 (...) @cpu_is_omap15xx()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @OMAP1610_DMA_LCD_CCR, align 4
  %8 = call i32 @omap_writew(i32 21568, i32 %7)
  %9 = load i32, i32* @OMAP1610_DMA_LCD_CSDP, align 4
  %10 = call i32 @omap_writew(i32 37122, i32 %9)
  %11 = load i32, i32* @OMAP1610_DMA_LCD_LCH_CTRL, align 4
  %12 = call i32 @omap_writew(i32 4, i32 %11)
  br label %13

13:                                               ; preds = %6, %0
  %14 = call i32 (...) @set_b1_regs()
  %15 = call i32 (...) @cpu_is_omap15xx()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @OMAP1610_DMA_LCD_CCR, align 4
  %19 = call i32 @omap_readw(i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, 2048
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcd_dma, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, 768
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @OMAP1610_DMA_LCD_CCR, align 4
  %30 = call i32 @omap_writew(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @set_b1_regs(...) #1

declare dso_local i32 @omap_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
