; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pata_pxa_data* }
%struct.pata_pxa_data = type { i32, i32 }
%struct.dma_tx_state = type { i32 }

@ATA_DMA_INTR = common dso_local global i8 0, align 1
@DMA_COMPLETE = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.ata_port*)* @pxa_bmdma_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pxa_bmdma_status(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.pata_pxa_data*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.dma_tx_state, align 4
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %8, align 8
  store %struct.pata_pxa_data* %9, %struct.pata_pxa_data** %3, align 8
  %10 = load i8, i8* @ATA_DMA_INTR, align 1
  store i8 %10, i8* %4, align 1
  %11 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %12 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %15 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dmaengine_tx_status(i32 %13, i32 %16, %struct.dma_tx_state* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DMA_COMPLETE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i8, i8* @ATA_DMA_ERR, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i8, i8* %4, align 1
  ret i8 %29
}

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
