; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_dma_running.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_dma_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@dma_chan_count = common dso_local global i32 0, align 4
@p = common dso_local global %struct.TYPE_2__* null, align 8
@CCR = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dma_running() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @dma_omap1()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = call i64 (...) @omap_lcd_dma_running()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %31

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @dma_chan_count, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* @CCR, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 %18(i32 %19, i32 %20)
  %22 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %1, align 4
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %11

30:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %25, %8
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @dma_omap1(...) #1

declare dso_local i64 @omap_lcd_dma_running(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
