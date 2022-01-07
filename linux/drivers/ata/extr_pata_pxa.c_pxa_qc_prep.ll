; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_qc_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pata_pxa_data* }
%struct.pata_pxa_data = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.pata_pxa_data*, i32 }

@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"prep_slave_sg() failed\0A\00", align 1
@pxa_ata_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pxa_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.pata_pxa_data*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %9, align 8
  store %struct.pata_pxa_data* %10, %struct.pata_pxa_data** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_TO_DEVICE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %5, align 4
  %30 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %31 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %37 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %41 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %32, i32 %35, i32 %38, i32 %39, i32 %40)
  store %struct.dma_async_tx_descriptor* %41, %struct.dma_async_tx_descriptor** %4, align 8
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %43 = icmp ne %struct.dma_async_tx_descriptor* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %28
  %45 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ata_dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %60

49:                                               ; preds = %28
  %50 = load i32, i32* @pxa_ata_dma_irq, align 4
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %54 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %54, i32 0, i32 0
  store %struct.pata_pxa_data* %53, %struct.pata_pxa_data** %55, align 8
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %57 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %56)
  %58 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %59 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %44, %17
  ret void
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ata_dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
