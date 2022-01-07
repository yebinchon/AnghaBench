; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_2__*, %struct.mtip_port* }
%struct.TYPE_2__ = type { i32 }
%struct.mtip_port = type { i32, i64, i32, i64 }

@BLOCK_DMA_ALLOC_SZ = common dso_local global i32 0, align 4
@AHCI_CMD_TBL_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @mtip_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_dma_free(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.mtip_port*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 1
  %6 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  store %struct.mtip_port* %6, %struct.mtip_port** %3, align 8
  %7 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %8 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @BLOCK_DMA_ALLOC_SZ, align 4
  %17 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %18 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %21 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32* %15, i32 %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %26 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @AHCI_CMD_TBL_SZ, align 4
  %35 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %36 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %39 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32* %33, i32 %34, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
