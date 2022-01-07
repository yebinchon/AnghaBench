; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32, i32, i32, i64, i32* }

@TCE_PCI_READ = common dso_local global i64 0, align 8
@TCE_PCI_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.iommu_table*, i32, i64, i32)* @pnv_tce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pnv_tce(%struct.iommu_table* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %22 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %26 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32* [ %23, %20 ], [ %28, %24 ]
  store i32* %30, i32** %10, align 8
  %31 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %32 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %35 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ilog2(i32 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %40 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %12, align 8
  %46 = mul nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %42, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %116, %29
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %133

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = and i64 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %12, align 8
  %60 = mul nsw i64 %58, %59
  %61 = lshr i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @READ_ONCE(i32 %67)
  %69 = call i64 @be64_to_cpu(i32 %68)
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %116, label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32* null, i32** %5, align 8
  br label %137

76:                                               ; preds = %72
  %77 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %78 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %81 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ilog2(i32 %82)
  %84 = add nsw i32 %83, 3
  %85 = call i32* @pnv_alloc_tce_level(i32 %79, i32 %84)
  store i32* %85, i32** %17, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  store i32* null, i32** %5, align 8
  br label %137

89:                                               ; preds = %76
  %90 = load i32*, i32** %17, align 8
  %91 = call i64 @__pa(i32* %90)
  %92 = load i64, i64* @TCE_PCI_READ, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @TCE_PCI_WRITE, align 8
  %95 = or i64 %93, %94
  store i64 %95, i64* %16, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i64, i64* %16, align 8
  %101 = call i32 @cpu_to_be64(i64 %100)
  %102 = call i32 @cmpxchg(i32* %99, i32 0, i32 %101)
  %103 = call i64 @be64_to_cpu(i32 %102)
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %89
  %107 = load i32*, i32** %17, align 8
  %108 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %109 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ilog2(i32 %110)
  %112 = add nsw i32 %111, 3
  %113 = call i32 @pnv_pci_ioda2_table_do_free_pages(i32* %107, i32 %112, i32 1)
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %16, align 8
  br label %115

115:                                              ; preds = %106, %89
  br label %116

116:                                              ; preds = %115, %53
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @TCE_PCI_READ, align 8
  %119 = load i64, i64* @TCE_PCI_WRITE, align 8
  %120 = or i64 %118, %119
  %121 = xor i64 %120, -1
  %122 = and i64 %117, %121
  %123 = call i32* @__va(i64 %122)
  store i32* %123, i32** %10, align 8
  %124 = load i64, i64* %13, align 8
  %125 = xor i64 %124, -1
  %126 = load i64, i64* %8, align 8
  %127 = and i64 %126, %125
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %13, align 8
  %130 = lshr i64 %129, %128
  store i64 %130, i64* %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  br label %50

133:                                              ; preds = %50
  %134 = load i32*, i32** %10, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %5, align 8
  br label %137

137:                                              ; preds = %133, %88, %75
  %138 = load i32*, i32** %5, align 8
  ret i32* %138
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @pnv_alloc_tce_level(i32, i32) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @pnv_pci_ioda2_table_do_free_pages(i32*, i32, i32) #1

declare dso_local i32* @__va(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
