; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_get_dma_src_pos.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_get_dma_src_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@p = common dso_local global %struct.TYPE_2__* null, align 8
@CPC = common dso_local global i32 0, align 4
@CSAC = common dso_local global i32 0, align 4
@DMA_ERRATA_3_3 = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@CSSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_get_dma_src_pos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @dma_omap15xx()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load i32, i32* @CPC, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 %9(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* @CSAC, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 %16(i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %6
  %21 = load i32, i32* @DMA_ERRATA_3_3, align 4
  %22 = call i64 @IS_DMA_ERRATA(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* @CSAC, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 %30(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %24, %20
  %35 = call i64 (...) @dma_omap15xx()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = load i32, i32* @CDAC, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 %40(i32 %41, i32 %42)
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load i32, i32* @CSAC, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 %49(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %37
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load i32, i32* @CSSA, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 %56(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %34
  %62 = call i64 (...) @dma_omap1()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load i32, i32* @CSSA, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 %67(i32 %68, i32 %69)
  %71 = and i32 %70, -65536
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %61
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @dma_omap15xx(...) #1

declare dso_local i64 @IS_DMA_ERRATA(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
