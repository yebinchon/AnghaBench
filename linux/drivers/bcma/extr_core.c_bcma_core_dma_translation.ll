; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_dma_translation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_dma_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BCMA_IOST = common dso_local global i32 0, align 4
@BCMA_IOST_DMA64 = common dso_local global i32 0, align 4
@BCMA_DMA_TRANSLATION_DMA64_CMT = common dso_local global i32 0, align 4
@BCMA_DMA_TRANSLATION_DMA32_CMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DMA translation unknown for host %d\0A\00", align 1
@BCMA_DMA_TRANSLATION_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_core_dma_translation(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %5 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %12 = load i32, i32* @BCMA_IOST, align 4
  %13 = call i32 @bcma_aread32(%struct.bcma_device* %11, i32 %12)
  %14 = load i32, i32* @BCMA_IOST_DMA64, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @BCMA_DMA_TRANSLATION_DMA64_CMT, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %10
  %20 = load i32, i32* @BCMA_DMA_TRANSLATION_DMA32_CMT, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %23 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %26 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bcma_err(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @BCMA_DMA_TRANSLATION_NONE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %19, %17, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @bcma_aread32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_err(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
