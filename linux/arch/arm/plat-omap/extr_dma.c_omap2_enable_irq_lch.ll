; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap2_enable_irq_lch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap2_enable_irq_lch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@dma_chan_lock = common dso_local global i32 0, align 4
@p = common dso_local global %struct.TYPE_2__* null, align 8
@IRQSTATUS_L0 = common dso_local global i32 0, align 4
@IRQENABLE_L0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap2_enable_irq_lch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_enable_irq_lch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @dma_omap1()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @dma_chan_lock, i64 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @IRQSTATUS_L0, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 %13(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* @IRQENABLE_L0, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 %21(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @IRQENABLE_L0, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 %31(i32 %32, i32 %33, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @dma_chan_lock, i64 %36)
  br label %38

38:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @dma_omap1(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
