; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu* }
%struct.iommu = type { %struct.iommu_map_table, %struct.atu* }
%struct.iommu_map_table = type { i64 }
%struct.atu = type { %struct.iommu_map_table }
%struct.page = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_READ = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HV_PCI_MAP_ATTR_WRITE = common dso_local global i64 0, align 8
@DMA_ATTR_WEAK_ORDERING = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_RELAXED_ORDER = common dso_local global i64 0, align 8
@IO_PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @dma_4v_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_4v_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.iommu*, align 8
  %15 = alloca %struct.atu*, align 8
  %16 = alloca %struct.iommu_map_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.iommu*, %struct.iommu** %30, align 8
  store %struct.iommu* %31, %struct.iommu** %14, align 8
  %32 = load %struct.iommu*, %struct.iommu** %14, align 8
  %33 = getelementptr inbounds %struct.iommu, %struct.iommu* %32, i32 0, i32 1
  %34 = load %struct.atu*, %struct.atu** %33, align 8
  store %struct.atu* %34, %struct.atu** %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @DMA_NONE, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %6
  br label %159

42:                                               ; preds = %6
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = call i64 @page_address(%struct.page* %43)
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = call i64 @IO_PAGE_ALIGN(i64 %49)
  %51 = load i64, i64* %20, align 8
  %52 = load i64, i64* @IO_PAGE_MASK, align 8
  %53 = and i64 %51, %52
  %54 = sub i64 %50, %53
  store i64 %54, i64* %19, align 8
  %55 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %56 = load i64, i64* %19, align 8
  %57 = lshr i64 %56, %55
  store i64 %57, i64* %19, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load %struct.iommu*, %struct.iommu** %14, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @iommu_use_atu(%struct.iommu* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %42
  %67 = load %struct.iommu*, %struct.iommu** %14, align 8
  %68 = getelementptr inbounds %struct.iommu, %struct.iommu* %67, i32 0, i32 0
  store %struct.iommu_map_table* %68, %struct.iommu_map_table** %16, align 8
  br label %72

69:                                               ; preds = %42
  %70 = load %struct.atu*, %struct.atu** %15, align 8
  %71 = getelementptr inbounds %struct.atu, %struct.atu* %70, i32 0, i32 0
  store %struct.iommu_map_table* %71, %struct.iommu_map_table** %16, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.iommu_map_table*, %struct.iommu_map_table** %16, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i64 @iommu_tbl_range_alloc(%struct.device* %73, %struct.iommu_map_table* %74, i64 %75, i32* null, i64 -1, i32 0)
  store i64 %76, i64* %26, align 8
  %77 = load i64, i64* %26, align 8
  %78 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %159

84:                                               ; preds = %72
  %85 = load %struct.iommu_map_table*, %struct.iommu_map_table** %16, align 8
  %86 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %26, align 8
  %89 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = add i64 %87, %90
  store i64 %91, i64* %24, align 8
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* @IO_PAGE_MASK, align 8
  %95 = xor i64 %94, -1
  %96 = and i64 %93, %95
  %97 = or i64 %92, %96
  store i64 %97, i64* %25, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* @IO_PAGE_MASK, align 8
  %100 = and i64 %98, %99
  %101 = call i64 @__pa(i64 %100)
  store i64 %101, i64* %22, align 8
  %102 = load i64, i64* @HV_PCI_MAP_ATTR_READ, align 8
  store i64 %102, i64* %23, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @DMA_TO_DEVICE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %84
  %107 = load i64, i64* @HV_PCI_MAP_ATTR_WRITE, align 8
  %108 = load i64, i64* %23, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %23, align 8
  br label %110

110:                                              ; preds = %106, %84
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @DMA_ATTR_WEAK_ORDERING, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i64, i64* @HV_PCI_MAP_ATTR_RELAXED_ORDER, align 8
  %117 = load i64, i64* %23, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %23, align 8
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @local_irq_save(i64 %120)
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %26, align 8
  %125 = call i32 @iommu_batch_start(%struct.device* %122, i64 %123, i64 %124)
  store i64 0, i64* %21, align 8
  br label %126

126:                                              ; preds = %141, %119
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %19, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i64, i64* %22, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @iommu_batch_add(i64 %131, i32 %132)
  store i64 %133, i64* %27, align 8
  %134 = load i64, i64* %27, align 8
  %135 = icmp slt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %166

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %21, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %21, align 8
  %144 = load i64, i64* @IO_PAGE_SIZE, align 8
  %145 = load i64, i64* %22, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %22, align 8
  br label %126

147:                                              ; preds = %126
  %148 = load i32, i32* %17, align 4
  %149 = call i64 @iommu_batch_end(i32 %148)
  %150 = icmp slt i64 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %166

155:                                              ; preds = %147
  %156 = load i64, i64* %18, align 8
  %157 = call i32 @local_irq_restore(i64 %156)
  %158 = load i64, i64* %25, align 8
  store i64 %158, i64* %7, align 8
  br label %175

159:                                              ; preds = %83, %41
  %160 = call i64 (...) @printk_ratelimit()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 @WARN_ON(i32 1)
  br label %164

164:                                              ; preds = %162, %159
  %165 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %165, i64* %7, align 8
  br label %175

166:                                              ; preds = %154, %139
  %167 = load i64, i64* %18, align 8
  %168 = call i32 @local_irq_restore(i64 %167)
  %169 = load %struct.iommu_map_table*, %struct.iommu_map_table** %16, align 8
  %170 = load i64, i64* %24, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %173 = call i32 @iommu_tbl_range_free(%struct.iommu_map_table* %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %174, i64* %7, align 8
  br label %175

175:                                              ; preds = %166, %164, %155
  %176 = load i64, i64* %7, align 8
  ret i64 %176
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @iommu_use_atu(%struct.iommu*, i32) #1

declare dso_local i64 @iommu_tbl_range_alloc(%struct.device*, %struct.iommu_map_table*, i64, i32*, i64, i32) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @iommu_batch_start(%struct.device*, i64, i64) #1

declare dso_local i64 @iommu_batch_add(i64, i32) #1

declare dso_local i64 @iommu_batch_end(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.iommu_map_table*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
