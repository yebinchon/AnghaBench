; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_dma.c_ltq_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_dma.c_ltq_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ltq_dma_membase = common dso_local global %struct.clk* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to remap dma resource\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to get dma clock\00", align 1
@DMA_RESET = common dso_local global i32 0, align 4
@LTQ_DMA_CTRL = common dso_local global i32 0, align 4
@LTQ_DMA_IRNEN = common dso_local global i32 0, align 4
@DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@LTQ_DMA_CS = common dso_local global i32 0, align 4
@DMA_CHAN_RST = common dso_local global i32 0, align 4
@LTQ_DMA_CCTRL = common dso_local global i32 0, align 4
@DMA_POLL = common dso_local global i32 0, align 4
@DMA_CLK_DIV4 = common dso_local global i32 0, align 4
@LTQ_DMA_CPOLL = common dso_local global i32 0, align 4
@DMA_CHAN_ON = common dso_local global i32 0, align 4
@LTQ_DMA_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Init done - hw rev: %X, ports: %d, channels: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_dma_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.resource*, %struct.resource** %4, align 8
  %13 = call %struct.clk* @devm_ioremap_resource(i32* %11, %struct.resource* %12)
  store %struct.clk* %13, %struct.clk** @ltq_dma_membase, align 8
  %14 = load %struct.clk*, %struct.clk** @ltq_dma_membase, align 8
  %15 = call i64 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.clk* @clk_get(i32* %21, i32* null)
  store %struct.clk* %22, %struct.clk** %3, align 8
  %23 = load %struct.clk*, %struct.clk** %3, align 8
  %24 = call i64 @IS_ERR(%struct.clk* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = call i32 @clk_enable(%struct.clk* %29)
  %31 = load i32, i32* @DMA_RESET, align 4
  %32 = load i32, i32* @LTQ_DMA_CTRL, align 4
  %33 = call i32 @ltq_dma_w32_mask(i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* @LTQ_DMA_IRNEN, align 4
  %35 = call i32 @ltq_dma_w32(i32 0, i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %55, %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DMA_MAX_CHANNEL, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @LTQ_DMA_CS, align 4
  %43 = call i32 @ltq_dma_w32(i32 %41, i32 %42)
  %44 = load i32, i32* @DMA_CHAN_RST, align 4
  %45 = load i32, i32* @LTQ_DMA_CCTRL, align 4
  %46 = call i32 @ltq_dma_w32(i32 %44, i32 %45)
  %47 = load i32, i32* @DMA_POLL, align 4
  %48 = load i32, i32* @DMA_CLK_DIV4, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LTQ_DMA_CPOLL, align 4
  %51 = call i32 @ltq_dma_w32(i32 %49, i32 %50)
  %52 = load i32, i32* @DMA_CHAN_ON, align 4
  %53 = load i32, i32* @LTQ_DMA_CCTRL, align 4
  %54 = call i32 @ltq_dma_w32_mask(i32 %52, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* @LTQ_DMA_ID, align 4
  %60 = call i32 @ltq_dma_r32(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 31
  %65 = load i32, i32* %5, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 15
  %68 = load i32, i32* %5, align 4
  %69 = lshr i32 %68, 20
  %70 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i32 %69)
  ret i32 0
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.clk* @clk_get(i32*, i32*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @ltq_dma_w32_mask(i32, i32, i32) #1

declare dso_local i32 @ltq_dma_w32(i32, i32) #1

declare dso_local i32 @ltq_dma_r32(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
