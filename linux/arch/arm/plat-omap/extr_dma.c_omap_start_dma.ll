; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@p = common dso_local global %struct.TYPE_3__* null, align 8
@CPC = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@dma_chan = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_LOGICAL_DMA_CH_COUNT = common dso_local global i32 0, align 4
@DMA_ERRATA_PARALLEL_CHANNELS = common dso_local global i32 0, align 4
@CLNK_CTRL = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@DMA_ERRATA_IFRAME_BUFFERING = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_BUFFERING_DISABLE = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4
@OMAP_DMA_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_start_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i64 (...) @dma_omap15xx()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load i32, i32* @CPC, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 %13(i32 0, i32 %14, i32 %15)
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %19, align 8
  %21 = load i32, i32* @CDAC, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 %20(i32 0, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = call i32 (...) @omap_dma_in_1510_mode()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %80

35:                                               ; preds = %27
  %36 = load i32, i32* @MAX_LOGICAL_DMA_CH_COUNT, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %6, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %7, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @enable_lnk(i32 %40)
  %42 = trunc i64 %37 to i32
  %43 = call i32 @memset(i8* %39, i32 0, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  store i8 1, i8* %46, align 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %75, %35
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %39, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %78

66:                                               ; preds = %53
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %39, i64 %68
  store i8 1, i8* %69, align 1
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @enable_lnk(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @omap_enable_channel_irq(i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %53, label %78

78:                                               ; preds = %75, %65
  %79 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %93

80:                                               ; preds = %27, %24
  %81 = load i32, i32* @DMA_ERRATA_PARALLEL_CHANNELS, align 4
  %82 = call i64 @IS_DMA_ERRATA(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @CLNK_CTRL, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 %87(i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %80
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @omap_enable_channel_irq(i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = load i32, i32* @CCR, align 4
  %100 = load i32, i32* %2, align 4
  %101 = call i32 %98(i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* @DMA_ERRATA_IFRAME_BUFFERING, align 4
  %103 = call i64 @IS_DMA_ERRATA(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i32, i32* @OMAP_DMA_CCR_BUFFERING_DISABLE, align 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %93
  %110 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = call i32 (...) @mb()
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @CCR, align 4
  %119 = load i32, i32* %2, align 4
  %120 = call i32 %116(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @OMAP_DMA_ACTIVE, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %121
  store i32 %128, i32* %126, align 4
  ret void
}

declare dso_local i64 @dma_omap15xx(...) #1

declare dso_local i32 @omap_dma_in_1510_mode(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @enable_lnk(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @omap_enable_channel_irq(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @IS_DMA_ERRATA(i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
