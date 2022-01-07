; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.iommu* }
%struct.iommu = type { %struct.TYPE_4__*, %struct.iommu_map_table }
%struct.TYPE_4__ = type { %struct.iommu_map_table }
%struct.iommu_map_table = type { i64 }
%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_ATTR_WEAK_ORDERING = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_RELAXED_ORDER = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_READ = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32, i64)* @dma_4v_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_4v_alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.iommu*, align 8
  %20 = alloca %struct.iommu_map_table*, align 8
  %21 = alloca %struct.page*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %18, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @IO_PAGE_ALIGN(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @get_order(i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @MAX_ORDER, align 8
  %32 = icmp uge i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %173

37:                                               ; preds = %5
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @DMA_ATTR_WEAK_ORDERING, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @HV_PCI_MAP_ATTR_RELAXED_ORDER, align 8
  store i64 %46, i64* %18, align 8
  br label %47

47:                                               ; preds = %45, %37
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %14, align 8
  %55 = call %struct.page* @alloc_pages_node(i32 %52, i32 %53, i64 %54)
  store %struct.page* %55, %struct.page** %21, align 8
  %56 = load %struct.page*, %struct.page** %21, align 8
  %57 = icmp ne %struct.page* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store i8* null, i8** %6, align 8
  br label %173

63:                                               ; preds = %47
  %64 = load %struct.page*, %struct.page** %21, align 8
  %65 = call i64 @page_address(%struct.page* %64)
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %15, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i64, i64* %14, align 8
  %70 = shl i64 %68, %69
  %71 = call i32 @memset(i8* %67, i32 0, i64 %70)
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.iommu*, %struct.iommu** %74, align 8
  store %struct.iommu* %75, %struct.iommu** %19, align 8
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  %79 = load %struct.iommu*, %struct.iommu** %19, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @iommu_use_atu(%struct.iommu* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %63
  %84 = load %struct.iommu*, %struct.iommu** %19, align 8
  %85 = getelementptr inbounds %struct.iommu, %struct.iommu* %84, i32 0, i32 1
  store %struct.iommu_map_table* %85, %struct.iommu_map_table** %20, align 8
  br label %91

86:                                               ; preds = %63
  %87 = load %struct.iommu*, %struct.iommu** %19, align 8
  %88 = getelementptr inbounds %struct.iommu, %struct.iommu* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.iommu_map_table* %90, %struct.iommu_map_table** %20, align 8
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = load %struct.iommu_map_table*, %struct.iommu_map_table** %20, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i64 @iommu_tbl_range_alloc(%struct.device* %92, %struct.iommu_map_table* %93, i64 %94, i32* null, i64 -1, i32 0)
  store i64 %95, i64* %23, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %169

103:                                              ; preds = %91
  %104 = load %struct.iommu_map_table*, %struct.iommu_map_table** %20, align 8
  %105 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = add nsw i64 %106, %109
  %111 = load i64*, i64** %9, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %15, align 8
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %22, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i64 @__pa(i64 %114)
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @local_irq_save(i64 %116)
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = load i64, i64* @HV_PCI_MAP_ATTR_READ, align 8
  %120 = load i64, i64* %18, align 8
  %121 = or i64 %119, %120
  %122 = load i64, i64* @HV_PCI_MAP_ATTR_WRITE, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* %23, align 8
  %125 = call i32 @iommu_batch_start(%struct.device* %118, i64 %123, i64 %124)
  store i64 0, i64* %17, align 8
  br label %126

126:                                              ; preds = %145, %103
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* %16, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = mul i64 %132, %133
  %135 = add i64 %131, %134
  %136 = load i32, i32* %12, align 4
  %137 = call i64 @iommu_batch_add(i64 %135, i32 %136)
  store i64 %137, i64* %25, align 8
  %138 = load i64, i64* %25, align 8
  %139 = icmp slt i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %160

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %17, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %17, align 8
  br label %126

148:                                              ; preds = %126
  %149 = load i32, i32* %12, align 4
  %150 = call i64 @iommu_batch_end(i32 %149)
  %151 = icmp slt i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %160

156:                                              ; preds = %148
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @local_irq_restore(i64 %157)
  %159 = load i8*, i8** %22, align 8
  store i8* %159, i8** %6, align 8
  br label %173

160:                                              ; preds = %155, %143
  %161 = load i64, i64* %13, align 8
  %162 = call i32 @local_irq_restore(i64 %161)
  %163 = load %struct.iommu_map_table*, %struct.iommu_map_table** %20, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %168 = call i32 @iommu_tbl_range_free(%struct.iommu_map_table* %163, i64 %165, i64 %166, i64 %167)
  br label %169

169:                                              ; preds = %160, %102
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @free_pages(i64 %170, i64 %171)
  store i8* null, i8** %6, align 8
  br label %173

173:                                              ; preds = %169, %156, %62, %36
  %174 = load i8*, i8** %6, align 8
  ret i8* %174
}

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @iommu_use_atu(%struct.iommu*, i32) #1

declare dso_local i64 @iommu_tbl_range_alloc(%struct.device*, %struct.iommu_map_table*, i64, i32*, i64, i32) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @iommu_batch_start(%struct.device*, i64, i64) #1

declare dso_local i64 @iommu_batch_add(i64, i32) #1

declare dso_local i64 @iommu_batch_end(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.iommu_map_table*, i64, i64, i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
