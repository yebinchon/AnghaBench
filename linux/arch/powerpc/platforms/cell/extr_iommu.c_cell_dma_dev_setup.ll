; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_iommu.c_cell_dma_dev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_iommu.c_cell_dma_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@cell_iommu_enabled = common dso_local global i64 0, align 8
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@dma_iommu_fixed_base = common dso_local global i64 0, align 8
@cell_dma_nommu_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @cell_dma_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_dma_dev_setup(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load i64, i64* @cell_iommu_enabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i64 @cell_iommu_get_fixed_address(%struct.device* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @OF_BAD_ADDR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @dma_iommu_fixed_base, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  br label %19

19:                                               ; preds = %12, %6
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i32 @cell_get_iommu_table(%struct.device* %21)
  %23 = call i32 @set_iommu_table_base(%struct.device* %20, i32 %22)
  br label %29

24:                                               ; preds = %1
  %25 = load i64, i64* @cell_dma_nommu_offset, align 8
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  ret void
}

declare dso_local i64 @cell_iommu_get_fixed_address(%struct.device*) #1

declare dso_local i32 @set_iommu_table_base(%struct.device*, i32) #1

declare dso_local i32 @cell_get_iommu_table(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
