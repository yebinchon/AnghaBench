; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_enable_channel_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_enable_channel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@p = common dso_local global %struct.TYPE_3__* null, align 8
@CSR = common dso_local global i32 0, align 4
@OMAP2_DMA_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@dma_chan = common dso_local global %struct.TYPE_4__* null, align 8
@CICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap_enable_channel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_enable_channel_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @dma_omap1()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = load i32, i32* @CSR, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 %8(i32 %9, i32 %10)
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %14, align 8
  %16 = load i32, i32* @OMAP2_DMA_CSR_CLEAR_MASK, align 4
  %17 = load i32, i32* @CSR, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 %15(i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CICR, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 %23(i32 %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
