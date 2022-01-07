; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* (%struct.arm_dma_alloc_args*, i8**)* }
%struct.arm_dma_alloc_args = type { i32, i8*, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.page = type opaque
%struct.arm_dma_buffer = type { i32, i8*, %struct.TYPE_5__* }

@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@COHERENT = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@cma_allocator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@simple_allocator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@remap_allocator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@pool_allocator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@arm_dma_bufs_lock = common dso_local global i32 0, align 4
@arm_dma_bufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i32, i32, i64, i8*)* @__dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.arm_dma_buffer*, align 8
  %24 = alloca %struct.arm_dma_alloc_args, align 8
  %25 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = call i32 @get_coherent_dma_mask(%struct.device* %26)
  store i32 %27, i32* %18, align 4
  store %struct.page* null, %struct.page** %19, align 8
  %28 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 0
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 1
  %31 = load i8*, i8** %17, align 8
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 2
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %32, align 8
  %38 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 3
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load i32, i32* @COHERENT, align 4
  br label %45

43:                                               ; preds = %8
  %44 = load i32, i32* @NORMAL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %38, align 4
  %47 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 4
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 5
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @PAGE_ALIGN(i64 %50)
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 6
  %53 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %53, %struct.device** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i8* null, i8** %9, align 8
  br label %169

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @__GFP_DMA, align 4
  %60 = load i32, i32* @__GFP_DMA32, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @__GFP_HIGHMEM, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %58, %64
  %66 = call %struct.arm_dma_buffer* @kzalloc(i32 24, i32 %65)
  store %struct.arm_dma_buffer* %66, %struct.arm_dma_buffer** %23, align 8
  %67 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %68 = icmp ne %struct.arm_dma_buffer* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  store i8* null, i8** %9, align 8
  br label %169

70:                                               ; preds = %57
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 4294967295
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @GFP_DMA, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @__GFP_COMP, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  %86 = load i32*, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @gfpflags_allow_blocking(i32 %87)
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = call i32 @dev_get_cma_area(%struct.device* %92)
  br label %95

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %101 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %100, i32 0, i32 2
  store %struct.TYPE_5__* @cma_allocator, %struct.TYPE_5__** %101, align 8
  br label %119

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %107 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %106, i32 0, i32 2
  store %struct.TYPE_5__* @simple_allocator, %struct.TYPE_5__** %107, align 8
  br label %118

108:                                              ; preds = %102
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %113 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %112, i32 0, i32 2
  store %struct.TYPE_5__* @remap_allocator, %struct.TYPE_5__** %113, align 8
  br label %117

114:                                              ; preds = %108
  %115 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %116 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %115, i32 0, i32 2
  store %struct.TYPE_5__* @pool_allocator, %struct.TYPE_5__** %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %105
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %121 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i8* (%struct.arm_dma_alloc_args*, i8**)*, i8* (%struct.arm_dma_alloc_args*, i8**)** %123, align 8
  %125 = bitcast %struct.page** %19 to i8**
  %126 = call i8* %124(%struct.arm_dma_alloc_args* %24, i8** %125)
  store i8* %126, i8** %20, align 8
  %127 = load %struct.page*, %struct.page** %19, align 8
  %128 = icmp ne %struct.page* %127, null
  br i1 %128, label %129, label %155

129:                                              ; preds = %119
  %130 = load %struct.device*, %struct.device** %10, align 8
  %131 = load %struct.page*, %struct.page** %19, align 8
  %132 = bitcast %struct.page* %131 to i8*
  %133 = call i32 @page_to_pfn(i8* %132)
  %134 = call i32 @pfn_to_dma(%struct.device* %130, i32 %133)
  %135 = load i32*, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i8*, i8** %20, align 8
  br label %144

141:                                              ; preds = %129
  %142 = load %struct.page*, %struct.page** %19, align 8
  %143 = bitcast %struct.page* %142 to i8*
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi i8* [ %140, %139 ], [ %143, %141 ]
  %146 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %147 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* %25, align 8
  %149 = call i32 @spin_lock_irqsave(i32* @arm_dma_bufs_lock, i64 %148)
  %150 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %151 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %150, i32 0, i32 0
  %152 = call i32 @list_add(i32* %151, i32* @arm_dma_bufs)
  %153 = load i64, i64* %25, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* @arm_dma_bufs_lock, i64 %153)
  br label %158

155:                                              ; preds = %119
  %156 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %23, align 8
  %157 = call i32 @kfree(%struct.arm_dma_buffer* %156)
  br label %158

158:                                              ; preds = %155, %144
  %159 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i8*, i8** %20, align 8
  br label %167

164:                                              ; preds = %158
  %165 = load %struct.page*, %struct.page** %19, align 8
  %166 = bitcast %struct.page* %165 to i8*
  br label %167

167:                                              ; preds = %164, %162
  %168 = phi i8* [ %163, %162 ], [ %166, %164 ]
  store i8* %168, i8** %9, align 8
  br label %169

169:                                              ; preds = %167, %69, %56
  %170 = load i8*, i8** %9, align 8
  ret i8* %170
}

declare dso_local i32 @get_coherent_dma_mask(%struct.device*) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.arm_dma_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @dev_get_cma_area(%struct.device*) #1

declare dso_local i32 @pfn_to_dma(%struct.device*, i32) #1

declare dso_local i32 @page_to_pfn(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.arm_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
