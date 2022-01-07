; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_clean_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_clean_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.TYPE_4__*, %struct.fe_rx_ring }
%struct.TYPE_4__ = type { i32 }
%struct.fe_rx_ring = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i64*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*)* @fe_clean_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_clean_rx(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca %struct.fe_rx_ring*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 1
  store %struct.fe_rx_ring* %7, %struct.fe_rx_ring** %3, align 8
  %8 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %9 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %8, i32 0, i32 4
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %81

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %71, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %21 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %20, i32 0, i32 4
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %19
  %29 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %35 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %33
  %44 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %45 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %49 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %57 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32* %47, i64 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %43, %33, %28
  %62 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %63 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @skb_free_frag(i64 %68)
  br label %70

70:                                               ; preds = %61, %19
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %13

74:                                               ; preds = %13
  %75 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %76 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = call i32 @kfree(i64* %77)
  %79 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %80 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %79, i32 0, i32 4
  store i64* null, i64** %80, align 8
  br label %81

81:                                               ; preds = %74, %1
  %82 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %83 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %88 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %92 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %98 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %101 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dma_free_coherent(i32* %90, i32 %96, %struct.TYPE_6__* %99, i32 %102)
  %104 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %105 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %104, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %105, align 8
  br label %106

106:                                              ; preds = %86, %81
  %107 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %108 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %128

113:                                              ; preds = %106
  %114 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %115 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.page* @virt_to_page(i32 %117)
  store %struct.page* %118, %struct.page** %4, align 8
  %119 = load %struct.page*, %struct.page** %4, align 8
  %120 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %121 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @__page_frag_cache_drain(%struct.page* %119, i32 %123)
  %125 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %3, align 8
  %126 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %125, i32 0, i32 1
  %127 = call i32 @memset(%struct.TYPE_5__* %126, i32 0, i32 8)
  br label %128

128:                                              ; preds = %113, %112
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_free_frag(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @__page_frag_cache_drain(%struct.page*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
