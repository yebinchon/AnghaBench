; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_dma_global_context_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_dma_global_context_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@p = common dso_local global %struct.TYPE_4__* null, align 8
@omap_dma_global_context = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GCR = common dso_local global i32 0, align 4
@OCP_SYSCONFIG = common dso_local global i32 0, align 4
@IRQENABLE_L0 = common dso_local global i32 0, align 4
@IRQENABLE_L1 = common dso_local global i32 0, align 4
@DMA_ROMCODE_BUG = common dso_local global i32 0, align 4
@IRQSTATUS_L0 = common dso_local global i32 0, align 4
@dma_chan_count = common dso_local global i32 0, align 4
@dma_chan = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_dma_global_context_restore() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @p, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @omap_dma_global_context, i32 0, i32 0), align 4
  %6 = load i32, i32* @GCR, align 4
  %7 = call i32 %4(i32 %5, i32 %6, i32 0)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @p, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %9, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @omap_dma_global_context, i32 0, i32 1), align 4
  %12 = load i32, i32* @OCP_SYSCONFIG, align 4
  %13 = call i32 %10(i32 %11, i32 %12, i32 0)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @p, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %15, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @omap_dma_global_context, i32 0, i32 2), align 4
  %18 = load i32, i32* @IRQENABLE_L0, align 4
  %19 = call i32 %16(i32 %17, i32 %18, i32 0)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @p, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @omap_dma_global_context, i32 0, i32 3), align 4
  %24 = load i32, i32* @IRQENABLE_L1, align 4
  %25 = call i32 %22(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* @DMA_ROMCODE_BUG, align 4
  %27 = call i64 @IS_DMA_ERRATA(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @p, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %31, align 8
  %33 = load i32, i32* @IRQSTATUS_L0, align 4
  %34 = call i32 %32(i32 3, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %29, %0
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @dma_chan_count, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dma_chan, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @omap_clear_dma(i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %36

55:                                               ; preds = %36
  ret void
}

declare dso_local i64 @IS_DMA_ERRATA(i32) #1

declare dso_local i32 @omap_clear_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
