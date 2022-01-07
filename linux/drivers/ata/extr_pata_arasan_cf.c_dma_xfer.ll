; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { %struct.TYPE_4__*, i32, %struct.dma_chan* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dma_chan*)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.arasan_cf_dev*, i32 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"device_prep_dma_memcpy failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@dma_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"dma_submit_error\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"wait_for_completion_timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arasan_cf_dev*, i32, i32, i32)* @dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_xfer(%struct.arasan_cf_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arasan_cf_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %16 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %15, i32 0, i32 2
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %11, align 8
  %18 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)** %22, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %13, align 8
  %29 = call %struct.dma_async_tx_descriptor* %23(%struct.dma_chan* %24, i32 %25, i32 %26, i32 %27, i64 %28)
  store %struct.dma_async_tx_descriptor* %29, %struct.dma_async_tx_descriptor** %10, align 8
  %30 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %31 = icmp ne %struct.dma_async_tx_descriptor* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %34 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %91

41:                                               ; preds = %4
  %42 = load i32, i32* @dma_callback, align 4
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %47 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %46, i32 0, i32 1
  store %struct.arasan_cf_dev* %45, %struct.arasan_cf_dev** %47, align 8
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %49 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %48, i32 0, i32 0
  %50 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %49, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %52 = call i32 %50(%struct.dma_async_tx_descriptor* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @dma_submit_error(i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %41
  %58 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %59 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  br label %91

65:                                               ; preds = %41
  %66 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %67 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %69, align 8
  %71 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %72 = call i32 %70(%struct.dma_chan* %71)
  %73 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %74 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %73, i32 0, i32 1
  %75 = load i32, i32* @TIMEOUT, align 4
  %76 = call i32 @wait_for_completion_timeout(i32* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %65
  %79 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %80 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %79)
  %81 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %82 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %65
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %78, %57, %32
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
