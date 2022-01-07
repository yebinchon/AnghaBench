; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_add_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_add_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncached_pool = type { i32, i32, i32, i32 }
%struct.page = type { i32 }

@MAX_CONVERTED_CHUNKS_PER_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@IA64_GRANULE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@IA64_GRANULE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAL_VISIBILITY_PHYSICAL = common dso_local global i32 0, align 4
@PAL_VISIBILITY_OK_REMOTE_NEEDED = common dso_local global i32 0, align 4
@uncached_ipi_visibility = common dso_local global i32 0, align 4
@PAL_VISIBILITY_OK = common dso_local global i32 0, align 4
@PAL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@uncached_ipi_mc_drain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uncached_pool*, i32)* @uncached_add_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncached_add_chunk(%struct.uncached_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uncached_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uncached_pool* %0, %struct.uncached_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %13 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %16 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %15, i32 0, i32 1
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %182

20:                                               ; preds = %2
  %21 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %22 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %28 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %182

30:                                               ; preds = %20
  %31 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %32 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_CONVERTED_CHUNKS_PER_NODE, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %38 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 -1, i32* %3, align 4
  br label %182

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @__GFP_THISNODE, align 4
  %46 = or i32 %44, %45
  %47 = load i64, i64* @IA64_GRANULE_SHIFT, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call %struct.page* @__alloc_pages_node(i32 %41, i32 %46, i64 %49)
  store %struct.page* %50, %struct.page** %6, align 8
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %55 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 -1, i32* %3, align 4
  br label %182

57:                                               ; preds = %40
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call i64 @page_address(%struct.page* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @PAGE_OFFSET, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %77, %57
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.page*, %struct.page** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page, %struct.page* %72, i64 %74
  %76 = call i32 @SetPageUncached(%struct.page* %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = call i32 @flush_tlb_kernel_range(i64 %81, i64 %85)
  %87 = load i32, i32* @PAL_VISIBILITY_PHYSICAL, align 4
  %88 = call i32 @ia64_pal_prefetch_visibility(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PAL_VISIBILITY_OK_REMOTE_NEEDED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %80
  %93 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %94 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %93, i32 0, i32 3
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load i32, i32* @uncached_ipi_visibility, align 4
  %97 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %98 = call i32 @smp_call_function(i32 %96, %struct.uncached_pool* %97, i32 1)
  %99 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %100 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %99, i32 0, i32 3
  %101 = call i64 @atomic_read(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %157

104:                                              ; preds = %92
  br label %111

105:                                              ; preds = %80
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @PAL_VISIBILITY_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %157

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %104
  %112 = call i32 (...) @preempt_disable()
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = call i32 @flush_icache_range(i64 %113, i64 %117)
  %119 = call i32 (...) @local_flush_tlb_all()
  %120 = call i32 (...) @preempt_enable()
  %121 = call i32 (...) @ia64_pal_mc_drain()
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @PAL_STATUS_SUCCESS, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %157

126:                                              ; preds = %111
  %127 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %128 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %127, i32 0, i32 3
  %129 = call i32 @atomic_set(i32* %128, i32 0)
  %130 = load i32, i32* @uncached_ipi_mc_drain, align 4
  %131 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %132 = call i32 @smp_call_function(i32 %130, %struct.uncached_pool* %131, i32 1)
  %133 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %134 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %133, i32 0, i32 3
  %135 = call i64 @atomic_read(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %157

138:                                              ; preds = %126
  %139 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %140 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %11, align 8
  %143 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @gen_pool_add(i32 %141, i64 %142, i32 %143, i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %157

149:                                              ; preds = %138
  %150 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %151 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %155 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  store i32 0, i32* %3, align 4
  br label %182

157:                                              ; preds = %148, %137, %125, %109, %103
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %170, %157
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = sdiv i32 %160, %161
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.page*, %struct.page** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.page, %struct.page* %165, i64 %167
  %169 = call i32 @ClearPageUncached(%struct.page* %168)
  br label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %158

173:                                              ; preds = %158
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* @IA64_GRANULE_SHIFT, align 8
  %176 = load i64, i64* @PAGE_SHIFT, align 8
  %177 = sub nsw i64 %175, %176
  %178 = call i32 @free_pages(i64 %174, i64 %177)
  %179 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %180 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %179, i32 0, i32 1
  %181 = call i32 @mutex_unlock(i32* %180)
  store i32 -1, i32* %3, align 4
  br label %182

182:                                              ; preds = %173, %149, %53, %36, %26, %19
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.page* @__alloc_pages_node(i32, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @SetPageUncached(%struct.page*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @ia64_pal_prefetch_visibility(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_call_function(i32, %struct.uncached_pool*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @ia64_pal_mc_drain(...) #1

declare dso_local i32 @gen_pool_add(i32, i64, i32, i32) #1

declare dso_local i32 @ClearPageUncached(%struct.page*) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
