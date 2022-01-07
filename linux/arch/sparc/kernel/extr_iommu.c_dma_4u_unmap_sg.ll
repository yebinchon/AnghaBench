; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64 }
%struct.iommu = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.scatterlist = type { i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_SIZE = common dso_local global i32 0, align 4
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IO_PAGE_MASK = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @dma_4u_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.strbuf*, align 8
  %15 = alloca %struct.iommu*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @DMA_NONE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.iommu*, %struct.iommu** %29, align 8
  store %struct.iommu* %30, %struct.iommu** %15, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.strbuf*, %struct.strbuf** %33, align 8
  store %struct.strbuf* %34, %struct.strbuf** %14, align 8
  %35 = load %struct.iommu*, %struct.iommu** %15, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = call i64 @fetch_sg_ctx(%struct.iommu* %35, %struct.scatterlist* %36)
  store i64 %37, i64* %12, align 8
  %38 = load %struct.iommu*, %struct.iommu** %15, align 8
  %39 = getelementptr inbounds %struct.iommu, %struct.iommu* %38, i32 0, i32 0
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %42, %struct.scatterlist** %13, align 8
  br label %43

43:                                               ; preds = %112, %5
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %121

47:                                               ; preds = %43
  %48 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %121

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @IO_PAGE_SIZE, align 4
  %61 = call i64 @iommu_num_pages(i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %18, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.iommu*, %struct.iommu** %15, align 8
  %65 = getelementptr inbounds %struct.iommu, %struct.iommu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %63, %67
  %69 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  store i64 %70, i64* %19, align 8
  %71 = load %struct.iommu*, %struct.iommu** %15, align 8
  %72 = getelementptr inbounds %struct.iommu, %struct.iommu* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %19, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %20, align 8
  %76 = load i32, i32* @IO_PAGE_MASK, align 4
  %77 = load i32, i32* %16, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %16, align 4
  %79 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %57
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %90 = load %struct.iommu*, %struct.iommu** %15, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @strbuf_flush(%struct.strbuf* %89, %struct.iommu* %90, i32 %91, i64 %92, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %83, %57
  store i32 0, i32* %21, align 4
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %18, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.iommu*, %struct.iommu** %15, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @iopte_make_dummy(%struct.iommu* %103, i32* %107)
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %21, align 4
  br label %97

112:                                              ; preds = %97
  %113 = load %struct.iommu*, %struct.iommu** %15, align 8
  %114 = getelementptr inbounds %struct.iommu, %struct.iommu* %113, i32 0, i32 1
  %115 = load i32, i32* %16, align 4
  %116 = load i64, i64* %18, align 8
  %117 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %118 = call i32 @iommu_tbl_range_free(%struct.TYPE_4__* %114, i32 %115, i64 %116, i32 %117)
  %119 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %120 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %119)
  store %struct.scatterlist* %120, %struct.scatterlist** %13, align 8
  br label %43

121:                                              ; preds = %56, %43
  %122 = load %struct.iommu*, %struct.iommu** %15, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @iommu_free_ctx(%struct.iommu* %122, i64 %123)
  %125 = load %struct.iommu*, %struct.iommu** %15, align 8
  %126 = getelementptr inbounds %struct.iommu, %struct.iommu* %125, i32 0, i32 0
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @fetch_sg_ctx(%struct.iommu*, %struct.scatterlist*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_num_pages(i32, i32, i32) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i32, i64, i64, i32) #1

declare dso_local i32 @iopte_make_dummy(%struct.iommu*, i32*) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @iommu_free_ctx(%struct.iommu*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
