; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_dma_start_read.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_dma_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@oxnas_ram_dma_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@OXNAS_DMA_MODE_INC = common dso_local global i32 0, align 4
@oxnas_sata_dma_settings = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SATA_DMA_REGS_BASE = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS = common dso_local global i64 0, align 8
@DMA_BASE_SRC_ADR = common dso_local global i64 0, align 8
@DMA_BASE_DST_ADR = common dso_local global i64 0, align 8
@DMA_BYTE_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dma_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_start_read(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_8__* @oxnas_ram_dma_settings to i8*), i64 16, i1 false)
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* @OXNAS_DMA_MODE_INC, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = call i64 @encode_control_status(%struct.TYPE_9__* @oxnas_sata_dma_settings, %struct.TYPE_8__* %5)
  %13 = load i64, i64* @SATA_DMA_REGS_BASE, align 8
  %14 = load i64, i64* @DMA_CTRL_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i64 %12, i64 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oxnas_sata_dma_settings, i32 0, i32 0), align 8
  %18 = load i64, i64* @SATA_DMA_REGS_BASE, align 8
  %19 = load i64, i64* @DMA_BASE_SRC_ADR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i64 %17, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SATA_DMA_REGS_BASE, align 8
  %25 = load i64, i64* @DMA_BASE_DST_ADR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i64 %23, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @encode_final_eot(%struct.TYPE_9__* @oxnas_sata_dma_settings, %struct.TYPE_8__* %5, i32 %28)
  %30 = load i64, i64* @SATA_DMA_REGS_BASE, align 8
  %31 = load i64, i64* @DMA_BYTE_CNT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i64 %29, i64 %32)
  %34 = call i32 (...) @dma_start()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @writel(i64, i64) #2

declare dso_local i64 @encode_control_status(%struct.TYPE_9__*, %struct.TYPE_8__*) #2

declare dso_local i64 @encode_final_eot(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @dma_start(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
