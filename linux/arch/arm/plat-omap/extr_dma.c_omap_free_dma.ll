; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }

@dma_chan = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"omap_dma: trying to free unallocated DMA channel %d\0A\00", align 1
@p = common dso_local global %struct.TYPE_3__* null, align 8
@CCR = common dso_local global i32 0, align 4
@dma_chan_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_free_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %54

14:                                               ; preds = %1
  %15 = call i64 (...) @dma_omap2plus()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @omap2_disable_irq_lch(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @omap_disable_channel_irq(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = load i32, i32* @CCR, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 %25(i32 0, i32 %26, i32 %27)
  %29 = call i64 (...) @dma_omap2plus()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @omap_clear_dma(i32 %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @dma_chan_lock, i64 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @dma_chan_lock, i64 %52)
  br label %54

54:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @dma_omap2plus(...) #1

declare dso_local i32 @omap2_disable_irq_lch(i32) #1

declare dso_local i32 @omap_disable_channel_irq(i32) #1

declare dso_local i32 @omap_clear_dma(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
