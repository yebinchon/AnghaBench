; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c_async_sum_product.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c_async_sum_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i32 }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i8*, i64, i32)*, %struct.device* }
%struct.dma_chan.0 = type opaque
%struct.device = type { i32 }
%struct.dmaengine_unmap_data = type { i32, i32, i64, i8** }

@DMA_PQ = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i32 0, align 4
@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@raid6_gfmul = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.page*, %struct.page**, i8*, i64, %struct.async_submit_ctl*)* @async_sum_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page* %0, %struct.page** %1, i8* %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.async_submit_ctl*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.dma_device*, align 8
  %14 = alloca %struct.dmaengine_unmap_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.device*, align 8
  %23 = alloca [2 x i8*], align 16
  %24 = alloca %struct.dma_async_tx_descriptor*, align 8
  %25 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %11, align 8
  %26 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %27 = load i32, i32* @DMA_PQ, align 4
  %28 = load %struct.page**, %struct.page*** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl* %26, i32 %27, %struct.page** %7, i32 1, %struct.page** %28, i32 2, i64 %29)
  store %struct.dma_chan* %30, %struct.dma_chan** %12, align 8
  %31 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %32 = icmp ne %struct.dma_chan* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 0
  %36 = load %struct.dma_device*, %struct.dma_device** %35, align 8
  br label %38

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi %struct.dma_device* [ %36, %33 ], [ null, %37 ]
  store %struct.dma_device* %39, %struct.dma_device** %13, align 8
  store %struct.dmaengine_unmap_data* null, %struct.dmaengine_unmap_data** %14, align 8
  %40 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %41 = icmp ne %struct.dma_device* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %44 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %43, i32 0, i32 1
  %45 = load %struct.device*, %struct.device** %44, align 8
  %46 = load i32, i32* @GFP_NOWAIT, align 4
  %47 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(%struct.device* %45, i32 3, i32 %46)
  store %struct.dmaengine_unmap_data* %47, %struct.dmaengine_unmap_data** %14, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %50 = icmp ne %struct.dmaengine_unmap_data* %49, null
  br i1 %50, label %51, label %140

51:                                               ; preds = %48
  %52 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %53 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %52, i32 0, i32 1
  %54 = load %struct.device*, %struct.device** %53, align 8
  store %struct.device* %54, %struct.device** %22, align 8
  %55 = load i32, i32* @DMA_PREP_PQ_DISABLE_P, align 4
  store i32 %55, i32* %25, align 4
  %56 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %57 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @DMA_PREP_FENCE, align 4
  %64 = load i32, i32* %25, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %25, align 4
  br label %66

66:                                               ; preds = %62, %51
  %67 = load %struct.device*, %struct.device** %22, align 8
  %68 = load %struct.page**, %struct.page*** %8, align 8
  %69 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 0
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i8* @dma_map_page(%struct.device* %67, %struct.page* %70, i32 0, i64 %71, i32 %72)
  %74 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %75 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.device*, %struct.device** %22, align 8
  %79 = load %struct.page**, %struct.page*** %8, align 8
  %80 = getelementptr inbounds %struct.page*, %struct.page** %79, i64 1
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i8* @dma_map_page(%struct.device* %78, %struct.page* %81, i32 0, i64 %82, i32 %83)
  %85 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %86 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* %84, i8** %88, align 8
  %89 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %90 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %89, i32 0, i32 0
  store i32 2, i32* %90, align 8
  %91 = load %struct.device*, %struct.device** %22, align 8
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %95 = call i8* @dma_map_page(%struct.device* %91, %struct.page* %92, i32 0, i64 %93, i32 %94)
  %96 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %97 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  store i8* %95, i8** %99, align 8
  %100 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %101 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %103 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %102, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 1
  store i8* %106, i8** %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %110 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %112 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %111, i32 0, i32 0
  %113 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i8*, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i8**, i8**, i32, i8*, i64, i32)** %112, align 8
  %114 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %115 = bitcast %struct.dma_chan* %114 to %struct.dma_chan.0*
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %117 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %118 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i32, i32* %25, align 4
  %123 = call %struct.dma_async_tx_descriptor* %113(%struct.dma_chan.0* %115, i8** %116, i8** %119, i32 2, i8* %120, i64 %121, i32 %122)
  store %struct.dma_async_tx_descriptor* %123, %struct.dma_async_tx_descriptor** %24, align 8
  %124 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  %125 = icmp ne %struct.dma_async_tx_descriptor* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %66
  %127 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  %128 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %129 = call i32 @dma_set_unmap(%struct.dma_async_tx_descriptor* %127, %struct.dmaengine_unmap_data* %128)
  %130 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %131 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  %132 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %133 = call i32 @async_tx_submit(%struct.dma_chan* %130, %struct.dma_async_tx_descriptor* %131, %struct.async_submit_ctl* %132)
  %134 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %135 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %134)
  %136 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  store %struct.dma_async_tx_descriptor* %136, %struct.dma_async_tx_descriptor** %6, align 8
  br label %193

137:                                              ; preds = %66
  %138 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %14, align 8
  %139 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %138)
  br label %140

140:                                              ; preds = %137, %48
  %141 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %142 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %141, i32 0, i32 1
  %143 = call i32 @async_tx_quiesce(i32* %142)
  %144 = load i32**, i32*** @raid6_gfmul, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %144, i64 %148
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %15, align 8
  %151 = load i32**, i32*** @raid6_gfmul, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %151, i64 %155
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %16, align 8
  %158 = load %struct.page**, %struct.page*** %8, align 8
  %159 = getelementptr inbounds %struct.page*, %struct.page** %158, i64 0
  %160 = load %struct.page*, %struct.page** %159, align 8
  %161 = call i32* @page_address(%struct.page* %160)
  store i32* %161, i32** %19, align 8
  %162 = load %struct.page**, %struct.page*** %8, align 8
  %163 = getelementptr inbounds %struct.page*, %struct.page** %162, i64 1
  %164 = load %struct.page*, %struct.page** %163, align 8
  %165 = call i32* @page_address(%struct.page* %164)
  store i32* %165, i32** %20, align 8
  %166 = load %struct.page*, %struct.page** %7, align 8
  %167 = call i32* @page_address(%struct.page* %166)
  store i32* %167, i32** %21, align 8
  br label %168

168:                                              ; preds = %172, %140
  %169 = load i64, i64* %10, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %10, align 8
  %171 = icmp ne i64 %169, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = load i32*, i32** %15, align 8
  %174 = load i32*, i32** %19, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %19, align 8
  %176 = load i32, i32* %174, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %17, align 4
  %180 = load i32*, i32** %16, align 8
  %181 = load i32*, i32** %20, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %20, align 8
  %183 = load i32, i32* %181, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %18, align 4
  %189 = xor i32 %187, %188
  %190 = load i32*, i32** %21, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %21, align 8
  store i32 %189, i32* %190, align 4
  br label %168

192:                                              ; preds = %168
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %193

193:                                              ; preds = %192, %126
  %194 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %194
}

declare dso_local %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl*, i32, %struct.page**, i32, %struct.page**, i32, i64) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(%struct.device*, i32, i32) #1

declare dso_local i8* @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @dma_set_unmap(%struct.dma_async_tx_descriptor*, %struct.dmaengine_unmap_data*) #1

declare dso_local i32 @async_tx_submit(%struct.dma_chan*, %struct.dma_async_tx_descriptor*, %struct.async_submit_ctl*) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

declare dso_local i32 @async_tx_quiesce(i32*) #1

declare dso_local i32* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
