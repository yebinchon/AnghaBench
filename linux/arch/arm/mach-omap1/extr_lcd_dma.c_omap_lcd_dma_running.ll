; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_lcd_dma.c_omap_lcd_dma_running.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_lcd_dma.c_omap_lcd_dma_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_LCDC_CONTROL = common dso_local global i32 0, align 4
@OMAP_LCDC_CTRL_LCD_EN = common dso_local global i32 0, align 4
@OMAP1610_DMA_LCD_CCR = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_lcd_dma_running() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @cpu_is_omap15xx()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %6 = call i32 @omap_readw(i32 %5)
  %7 = load i32, i32* @OMAP_LCDC_CTRL_LCD_EN, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i32 1, i32* %1, align 4
  br label %24

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %0
  %13 = call i64 (...) @cpu_is_omap16xx()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @OMAP1610_DMA_LCD_CCR, align 4
  %17 = call i32 @omap_readw(i32 %16)
  %18 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %1, align 4
  br label %24

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %12
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %21, %10
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
