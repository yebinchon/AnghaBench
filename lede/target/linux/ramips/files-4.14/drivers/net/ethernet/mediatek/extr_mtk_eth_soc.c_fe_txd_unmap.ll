; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_txd_unmap.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_txd_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fe_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@dma_len0 = common dso_local global i32 0, align 4
@dma_addr0 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@dma_len1 = common dso_local global i32 0, align 4
@dma_addr1 = common dso_local global i32 0, align 4
@DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.fe_tx_buf*)* @fe_txd_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_txd_unmap(%struct.device* %0, %struct.fe_tx_buf* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fe_tx_buf*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.fe_tx_buf* %1, %struct.fe_tx_buf** %4, align 8
  %5 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %6 = load i32, i32* @dma_len0, align 4
  %7 = call i64 @dma_unmap_len(%struct.fe_tx_buf* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %12 = load i32, i32* @dma_addr0, align 4
  %13 = call i32 @dma_unmap_addr(%struct.fe_tx_buf* %11, i32 %12)
  %14 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %15 = load i32, i32* @dma_len0, align 4
  %16 = call i64 @dma_unmap_len(%struct.fe_tx_buf* %14, i32 %15)
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_unmap_page(%struct.device* %10, i32 %13, i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %9, %2
  %20 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %21 = load i32, i32* @dma_len1, align 4
  %22 = call i64 @dma_unmap_len(%struct.fe_tx_buf* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %27 = load i32, i32* @dma_addr1, align 4
  %28 = call i32 @dma_unmap_addr(%struct.fe_tx_buf* %26, i32 %27)
  %29 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %30 = load i32, i32* @dma_len1, align 4
  %31 = call i64 @dma_unmap_len(%struct.fe_tx_buf* %29, i32 %30)
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_page(%struct.device* %25, i32 %28, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %36 = load i32, i32* @dma_addr0, align 4
  %37 = call i32 @dma_unmap_len_set(%struct.fe_tx_buf* %35, i32 %36, i32 0)
  %38 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %39 = load i32, i32* @dma_addr1, align 4
  %40 = call i32 @dma_unmap_len_set(%struct.fe_tx_buf* %38, i32 %39, i32 0)
  %41 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %42 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %47 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %46, i32 0, i32 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = load i64, i64* @DMA_DUMMY_DESC, align 8
  %50 = inttoptr i64 %49 to %struct.sk_buff*
  %51 = icmp ne %struct.sk_buff* %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %54 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %52, %45, %34
  %58 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %4, align 8
  %59 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %58, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %59, align 8
  ret void
}

declare dso_local i64 @dma_unmap_len(%struct.fe_tx_buf*, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.fe_tx_buf*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.fe_tx_buf*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
