; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c___fe_tx_dma_map_page.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c___fe_tx_dma_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_tx_ring = type { %struct.fe_tx_buf* }
%struct.fe_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.fe_map_state = type { i32, i64, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@dma_addr1 = common dso_local global i32 0, align 4
@dma_len1 = common dso_local global i32 0, align 4
@DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@dma_addr0 = common dso_local global i32 0, align 4
@dma_len0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_tx_ring*, %struct.fe_map_state*, %struct.page*, i64, i64)* @__fe_tx_dma_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fe_tx_dma_map_page(%struct.fe_tx_ring* %0, %struct.fe_map_state* %1, %struct.page* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fe_tx_ring*, align 8
  %8 = alloca %struct.fe_map_state*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.fe_tx_buf*, align 8
  %14 = alloca i8*, align 8
  store %struct.fe_tx_ring* %0, %struct.fe_tx_ring** %7, align 8
  store %struct.fe_map_state* %1, %struct.fe_map_state** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %16 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %15, i32 0, i32 3
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.device*, %struct.device** %12, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i8* @dma_map_page(%struct.device* %18, %struct.page* %19, i64 %20, i64 %21, i32 %22)
  store i8* %23, i8** %14, align 8
  %24 = load %struct.device*, %struct.device** %12, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @dma_mapping_error(%struct.device* %24, i8* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %107

32:                                               ; preds = %5
  %33 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %34 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %39 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %7, align 8
  %45 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %46 = call i32 @fe_tx_dma_write_desc(%struct.fe_tx_ring* %44, %struct.fe_map_state* %45)
  br label %47

47:                                               ; preds = %43, %37, %32
  %48 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %7, align 8
  %49 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %48, i32 0, i32 0
  %50 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %49, align 8
  %51 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %52 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %50, i64 %53
  store %struct.fe_tx_buf* %54, %struct.fe_tx_buf** %13, align 8
  %55 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %56 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %47
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %63 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @TX_DMA_PLEN1(i64 %65)
  %67 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %68 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %73 = load i32, i32* @dma_addr1, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @dma_unmap_addr_set(%struct.fe_tx_buf* %72, i32 %73, i8* %74)
  %76 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %77 = load i32, i32* @dma_len1, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @dma_unmap_len_set(%struct.fe_tx_buf* %76, i32 %77, i64 %78)
  br label %102

80:                                               ; preds = %47
  %81 = load i64, i64* @DMA_DUMMY_DESC, align 8
  %82 = inttoptr i64 %81 to %struct.sk_buff*
  %83 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %84 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %83, i32 0, i32 0
  store %struct.sk_buff* %82, %struct.sk_buff** %84, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %87 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @TX_DMA_PLEN0(i64 %89)
  %91 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %92 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %95 = load i32, i32* @dma_addr0, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @dma_unmap_addr_set(%struct.fe_tx_buf* %94, i32 %95, i8* %96)
  %98 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %99 = load i32, i32* @dma_len0, align 4
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @dma_unmap_len_set(%struct.fe_tx_buf* %98, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %80, %60
  %103 = load %struct.fe_map_state*, %struct.fe_map_state** %8, align 8
  %104 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %102, %29
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i8* @dma_map_page(%struct.device*, %struct.page*, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @fe_tx_dma_write_desc(%struct.fe_tx_ring*, %struct.fe_map_state*) #1

declare dso_local i32 @TX_DMA_PLEN1(i64) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.fe_tx_buf*, i32, i8*) #1

declare dso_local i32 @dma_unmap_len_set(%struct.fe_tx_buf*, i32, i64) #1

declare dso_local i32 @TX_DMA_PLEN0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
