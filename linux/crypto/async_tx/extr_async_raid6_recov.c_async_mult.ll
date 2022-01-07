; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c_async_mult.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c_async_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i32 }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i64*, i64, i32)*, %struct.device* }
%struct.dma_chan.0 = type opaque
%struct.device = type { i32 }
%struct.dmaengine_unmap_data = type { i64, i8**, i32, i32 }

@DMA_PQ = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i32 0, align 4
@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@raid6_gfmul = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.page*, %struct.page*, i64, i64, %struct.async_submit_ctl*)* @async_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @async_mult(%struct.page* %0, %struct.page* %1, i64 %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.async_submit_ctl*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.dma_device*, align 8
  %14 = alloca %struct.dmaengine_unmap_data*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca [2 x i8*], align 16
  %19 = alloca %struct.device*, align 8
  %20 = alloca %struct.dma_async_tx_descriptor*, align 8
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %11, align 8
  %22 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %23 = load i32, i32* @DMA_PQ, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl* %22, i32 %23, %struct.page** %7, i32 1, %struct.page** %8, i32 1, i64 %24)
  store %struct.dma_chan* %25, %struct.dma_chan** %12, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %27 = icmp ne %struct.dma_chan* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %30 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %29, i32 0, i32 0
  %31 = load %struct.dma_device*, %struct.dma_device** %30, align 8
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi %struct.dma_device* [ %31, %28 ], [ null, %32 ]
  store %struct.dma_device* %34, %struct.dma_device** %13, align 8
  store %struct.dmaengine_unmap_data* null, %struct.dmaengine_unmap_data** %14, align 8
  %35 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %36 = icmp ne %struct.dma_device* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %39 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %38, i32 0, i32 1
  %40 = load %struct.device*, %struct.device** %39, align 8
  %41 = load i32, i32* @GFP_NOWAIT, align 4
  %42 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(%struct.device* %40, i32 3, i32 %41)
  store %struct.dmaengine_unmap_data* %42, %struct.dmaengine_unmap_data** %14, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %45 = icmp ne %struct.dmaengine_unmap_data* %44, null
  br i1 %45, label %46, label %125

46:                                               ; preds = %43
  %47 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %48 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %47, i32 0, i32 1
  %49 = load %struct.device*, %struct.device** %48, align 8
  store %struct.device* %49, %struct.device** %19, align 8
  %50 = load i32, i32* @DMA_PREP_PQ_DISABLE_P, align 4
  store i32 %50, i32* %21, align 4
  %51 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %52 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* @DMA_PREP_FENCE, align 4
  %59 = load i32, i32* %21, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.device*, %struct.device** %19, align 8
  %63 = load %struct.page*, %struct.page** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i8* @dma_map_page(%struct.device* %62, %struct.page* %63, i32 0, i64 %64, i32 %65)
  %67 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %68 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %72 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.device*, %struct.device** %19, align 8
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %79 = call i8* @dma_map_page(%struct.device* %75, %struct.page* %76, i32 0, i64 %77, i32 %78)
  %80 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %81 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %85 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %91 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %96 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %98 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %97, i32 0, i32 0
  %99 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i64*, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i64*, i64, i32)** %98, align 8
  %100 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %101 = bitcast %struct.dma_chan* %100 to %struct.dma_chan.0*
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  %103 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %104 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %21, align 4
  %108 = call %struct.dma_async_tx_descriptor* %99(%struct.dma_chan.0* %101, i8** %102, i8** %105, i32 1, i64* %9, i64 %106, i32 %107)
  store %struct.dma_async_tx_descriptor* %108, %struct.dma_async_tx_descriptor** %20, align 8
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  %110 = icmp ne %struct.dma_async_tx_descriptor* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %61
  %112 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  %113 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %114 = call i32 @dma_set_unmap(%struct.dma_async_tx_descriptor* %112, %struct.dmaengine_unmap_data* %113)
  %115 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %116 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %115)
  %117 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %118 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  %119 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %120 = call i32 @async_tx_submit(%struct.dma_chan* %117, %struct.dma_async_tx_descriptor* %118, %struct.async_submit_ctl* %119)
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  store %struct.dma_async_tx_descriptor* %121, %struct.dma_async_tx_descriptor** %6, align 8
  br label %151

122:                                              ; preds = %61
  %123 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %124 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %123)
  br label %125

125:                                              ; preds = %122, %43
  %126 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %127 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %126, i32 0, i32 1
  %128 = call i32 @async_tx_quiesce(i32* %127)
  %129 = load i64**, i64*** @raid6_gfmul, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds i64*, i64** %129, i64 %130
  %132 = load i64*, i64** %131, align 8
  store i64* %132, i64** %15, align 8
  %133 = load %struct.page*, %struct.page** %7, align 8
  %134 = call i64* @page_address(%struct.page* %133)
  store i64* %134, i64** %16, align 8
  %135 = load %struct.page*, %struct.page** %8, align 8
  %136 = call i64* @page_address(%struct.page* %135)
  store i64* %136, i64** %17, align 8
  br label %137

137:                                              ; preds = %141, %125
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %10, align 8
  %140 = icmp ne i64 %138, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i64*, i64** %15, align 8
  %143 = load i64*, i64** %17, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %17, align 8
  %145 = load i64, i64* %143, align 8
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %16, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %16, align 8
  store i64 %147, i64* %148, align 8
  br label %137

150:                                              ; preds = %137
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %151

151:                                              ; preds = %150, %111
  %152 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %152
}

declare dso_local %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl*, i32, %struct.page**, i32, %struct.page**, i32, i64) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(%struct.device*, i32, i32) #1

declare dso_local i8* @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @dma_set_unmap(%struct.dma_async_tx_descriptor*, %struct.dmaengine_unmap_data*) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

declare dso_local i32 @async_tx_submit(%struct.dma_chan*, %struct.dma_async_tx_descriptor*, %struct.async_submit_ctl*) #1

declare dso_local i32 @async_tx_quiesce(i32*) #1

declare dso_local i64* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
