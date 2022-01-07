; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_get_required_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_get_required_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_iommu_get_required_mask(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.iommu_table* @get_iommu_table_base(%struct.device* %7)
  store %struct.iommu_table* %8, %struct.iommu_table** %4, align 8
  %9 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %10 = icmp ne %struct.iommu_table* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i64 @dev_is_pci(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @dma_direct_get_required_mask(%struct.device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @dma_iommu_bypass_supported(%struct.device* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %28 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %31 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @fls_long(i64 %33)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 1, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %26, %23, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.iommu_table* @get_iommu_table_base(%struct.device*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @dma_direct_get_required_mask(%struct.device*) #1

declare dso_local i64 @dma_iommu_bypass_supported(%struct.device*, i32) #1

declare dso_local i32 @fls_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
