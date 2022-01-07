; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_pata_data = type { i8*, i32, i8*, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.platform_device* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.platform_device = type { i32 }
%struct.dma_slave_config = type { i8*, i32, i8*, i8*, i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@EP93XX_DMA_IDE = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"ep93xx-pata-rx\00", align 1
@ep93xx_pata_dma_filter = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ep93xx-pata-tx\00", align 1
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to configure rx dma channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to configure tx dma channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_pata_data*)* @ep93xx_pata_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_pata_dma_init(%struct.ep93xx_pata_data* %0) #0 {
  %2 = alloca %struct.ep93xx_pata_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_slave_config, align 8
  store %struct.ep93xx_pata_data* %0, %struct.ep93xx_pata_data** %2, align 8
  %6 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %7 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %6, i32 0, i32 6
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dma_cap_zero(i32 %9)
  %11 = load i32, i32* @DMA_SLAVE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dma_cap_set(i32 %11, i32 %12)
  %14 = load i8*, i8** @EP93XX_DMA_IDE, align 8
  %15 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %16 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** @DMA_DEV_TO_MEM, align 8
  %19 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %20 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %23 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ep93xx_pata_dma_filter, align 4
  %27 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %28 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %27, i32 0, i32 5
  %29 = call i8* @dma_request_channel(i32 %25, i32 %26, %struct.TYPE_2__* %28)
  %30 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %31 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %33 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %107

37:                                               ; preds = %1
  %38 = load i8*, i8** @EP93XX_DMA_IDE, align 8
  %39 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %40 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @DMA_MEM_TO_DEV, align 8
  %43 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %44 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %47 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ep93xx_pata_dma_filter, align 4
  %51 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %52 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %51, i32 0, i32 4
  %53 = call i8* @dma_request_channel(i32 %49, i32 %50, %struct.TYPE_2__* %52)
  %54 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %55 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %57 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %37
  %61 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %62 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @dma_release_channel(i8* %63)
  br label %107

65:                                               ; preds = %37
  %66 = call i32 @memset(%struct.dma_slave_config* %5, i32 0, i32 40)
  %67 = load i8*, i8** @DMA_DEV_TO_MEM, align 8
  %68 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %70 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 4
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  %75 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %76 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @dmaengine_slave_config(i8* %77, %struct.dma_slave_config* %5)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %65
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %85 = call i32 @ep93xx_pata_release_dma(%struct.ep93xx_pata_data* %84)
  br label %107

86:                                               ; preds = %65
  %87 = call i32 @memset(%struct.dma_slave_config* %5, i32 0, i32 40)
  %88 = load i8*, i8** @DMA_MEM_TO_DEV, align 8
  %89 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %91 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %95 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %97 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @dmaengine_slave_config(i8* %98, %struct.dma_slave_config* %5)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %86
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %2, align 8
  %106 = call i32 @ep93xx_pata_release_dma(%struct.ep93xx_pata_data* %105)
  br label %107

107:                                              ; preds = %36, %60, %80, %101, %86
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_channel(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i64 @dmaengine_slave_config(i8*, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ep93xx_pata_release_dma(%struct.ep93xx_pata_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
