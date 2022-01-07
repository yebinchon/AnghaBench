; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64 }
%struct.iommu = type { %struct.TYPE_4__, i32, i64, i32* }
%struct.TYPE_4__ = type { i64 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOPTE_CONTEXT = common dso_local global i64 0, align 8
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, i64)* @dma_4u_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iommu*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DMA_NONE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = call i64 (...) @printk_ratelimit()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @WARN_ON(i32 1)
  br label %29

29:                                               ; preds = %27, %24
  br label %126

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.iommu*, %struct.iommu** %33, align 8
  store %struct.iommu* %34, %struct.iommu** %11, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.strbuf*, %struct.strbuf** %37, align 8
  store %struct.strbuf* %38, %struct.strbuf** %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @IO_PAGE_ALIGN(i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @IO_PAGE_MASK, align 8
  %45 = and i64 %43, %44
  %46 = sub i64 %42, %45
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %48 = load i64, i64* %15, align 8
  %49 = lshr i64 %48, %47
  store i64 %49, i64* %15, align 8
  %50 = load %struct.iommu*, %struct.iommu** %11, align 8
  %51 = getelementptr inbounds %struct.iommu, %struct.iommu* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.iommu*, %struct.iommu** %11, align 8
  %55 = getelementptr inbounds %struct.iommu, %struct.iommu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %53, %57
  %59 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  store i32* %61, i32** %13, align 8
  %62 = load i64, i64* @IO_PAGE_MASK, align 8
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load %struct.iommu*, %struct.iommu** %11, align 8
  %66 = getelementptr inbounds %struct.iommu, %struct.iommu* %65, i32 0, i32 1
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  store i64 0, i64* %16, align 8
  %69 = load %struct.iommu*, %struct.iommu** %11, align 8
  %70 = getelementptr inbounds %struct.iommu, %struct.iommu* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %30
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @iopte_val(i32 %75)
  %77 = load i64, i64* @IOPTE_CONTEXT, align 8
  %78 = and i64 %76, %77
  %79 = lshr i64 %78, 47
  store i64 %79, i64* %16, align 8
  br label %80

80:                                               ; preds = %73, %30
  %81 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %92 = load %struct.iommu*, %struct.iommu** %11, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @strbuf_flush(%struct.strbuf* %91, %struct.iommu* %92, i64 %93, i64 %94, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %85, %80
  store i64 0, i64* %17, align 8
  br label %99

99:                                               ; preds = %109, %98
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.iommu*, %struct.iommu** %11, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i64, i64* %17, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i32 @iopte_make_dummy(%struct.iommu* %104, i32* %107)
  br label %109

109:                                              ; preds = %103
  %110 = load i64, i64* %17, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %17, align 8
  br label %99

112:                                              ; preds = %99
  %113 = load %struct.iommu*, %struct.iommu** %11, align 8
  %114 = load i64, i64* %16, align 8
  %115 = call i32 @iommu_free_ctx(%struct.iommu* %113, i64 %114)
  %116 = load %struct.iommu*, %struct.iommu** %11, align 8
  %117 = getelementptr inbounds %struct.iommu, %struct.iommu* %116, i32 0, i32 1
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.iommu*, %struct.iommu** %11, align 8
  %121 = getelementptr inbounds %struct.iommu, %struct.iommu* %120, i32 0, i32 0
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %125 = call i32 @iommu_tbl_range_free(%struct.TYPE_4__* %121, i64 %122, i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %112, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iopte_val(i32) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i64, i64, i64, i32) #1

declare dso_local i32 @iopte_make_dummy(%struct.iommu*, i32*) #1

declare dso_local i32 @iommu_free_ctx(%struct.iommu*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.TYPE_4__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
