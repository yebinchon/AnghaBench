; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_2__*, %struct.mtip_port* }
%struct.TYPE_2__ = type { i32 }
%struct.mtip_port = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i8* }

@BLOCK_DMA_ALLOC_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHCI_CMD_TBL_SZ = common dso_local global i32 0, align 4
@AHCI_RX_FIS_OFFSET = common dso_local global i32 0, align 4
@AHCI_IDFY_OFFSET = common dso_local global i32 0, align 4
@AHCI_SECTBUF_OFFSET = common dso_local global i32 0, align 4
@AHCI_SMARTBUF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_dma_alloc(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.mtip_port*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 1
  %7 = load %struct.mtip_port*, %struct.mtip_port** %6, align 8
  store %struct.mtip_port* %7, %struct.mtip_port** %4, align 8
  %8 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @BLOCK_DMA_ALLOC_SZ, align 4
  %13 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %14 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @dma_alloc_coherent(i32* %11, i32 %12, i32* %14, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 6
  store i32* %17, i32** %19, align 8
  %20 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %21 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %123

27:                                               ; preds = %1
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @AHCI_CMD_TBL_SZ, align 4
  %33 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %34 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(i32* %31, i32 %32, i32* %34, i32 %35)
  %37 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %40 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %39, i32 0, i32 11
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %27
  %44 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %45 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @BLOCK_DMA_ALLOC_SZ, align 4
  %49 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %53 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32* %47, i32 %48, i32* %51, i32 %54)
  %56 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %57 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %56, i32 0, i32 6
  store i32* null, i32** %57, align 8
  %58 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %59 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %123

62:                                               ; preds = %27
  %63 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %64 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @AHCI_RX_FIS_OFFSET, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %70 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %69, i32 0, i32 10
  store i32* %68, i32** %70, align 8
  %71 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %72 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AHCI_RX_FIS_OFFSET, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %77 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %79 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @AHCI_IDFY_OFFSET, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 9
  store i32* %83, i32** %85, align 8
  %86 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %87 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AHCI_IDFY_OFFSET, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %92 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %94 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @AHCI_SECTBUF_OFFSET, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %100 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %99, i32 0, i32 8
  store i32* %98, i32** %100, align 8
  %101 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %102 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AHCI_SECTBUF_OFFSET, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %107 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %109 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @AHCI_SMARTBUF_OFFSET, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %115 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %114, i32 0, i32 7
  store i32* %113, i32** %115, align 8
  %116 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %117 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AHCI_SMARTBUF_OFFSET, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %122 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %62, %43, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
