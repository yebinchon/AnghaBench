; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci.c_quirk_cypress.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci.c_quirk_cypress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_controller*, %struct.TYPE_2__*, i32 }
%struct.pci_controller = type { %struct.pci_iommu_arena* }
%struct.pci_iommu_arena = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_ISA = common dso_local global i32 0, align 4
@__direct_map_base = common dso_local global i32 0, align 4
@__direct_map_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_cypress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_cypress(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.pci_iommu_arena*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = ashr i32 %7, 8
  %9 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PCI_FUNC(i32 %44)
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %68

47:                                               ; preds = %11
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 368, i32* %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 375, i32* %57, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 886, i32* %62, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 886, i32* %67, align 4
  br label %68

68:                                               ; preds = %47, %11
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* @PCI_CLASS_BRIDGE_ISA, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %69
  %77 = load i32, i32* @__direct_map_base, align 4
  %78 = load i32, i32* @__direct_map_size, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %80, 4293918720
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* @__direct_map_base, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 4293918720, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* @__direct_map_size, align 4
  br label %116

87:                                               ; preds = %76
  %88 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 1
  %90 = load %struct.pci_controller*, %struct.pci_controller** %89, align 8
  store %struct.pci_controller* %90, %struct.pci_controller** %3, align 8
  %91 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %92 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %91, i32 0, i32 0
  %93 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %92, align 8
  store %struct.pci_iommu_arena* %93, %struct.pci_iommu_arena** %4, align 8
  %94 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %4, align 8
  %95 = icmp ne %struct.pci_iommu_arena* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %4, align 8
  %98 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %4, align 8
  %101 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %104, 4293918720
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %4, align 8
  %108 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 4293918720, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %4, align 8
  %114 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %96, %87
  br label %116

116:                                              ; preds = %115, %82
  br label %117

117:                                              ; preds = %116, %69
  ret void
}

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
