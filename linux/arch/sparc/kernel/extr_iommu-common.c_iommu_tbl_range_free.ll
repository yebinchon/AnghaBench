; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_range_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_range_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_map_table = type { i64, i64, i32 }
%struct.iommu_pool = type { i32 }

@IOMMU_ERROR_CODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_tbl_range_free(%struct.iommu_map_table* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.iommu_map_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_pool*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iommu_map_table* %0, %struct.iommu_map_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.iommu_map_table*, %struct.iommu_map_table** %5, align 8
  %13 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.iommu_map_table*, %struct.iommu_map_table** %5, align 8
  %21 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = load i64, i64* %11, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %18, %4
  %27 = load %struct.iommu_map_table*, %struct.iommu_map_table** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.iommu_pool* @get_pool(%struct.iommu_map_table* %27, i64 %28)
  store %struct.iommu_pool* %29, %struct.iommu_pool** %9, align 8
  %30 = load %struct.iommu_pool*, %struct.iommu_pool** %9, align 8
  %31 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.iommu_map_table*, %struct.iommu_map_table** %5, align 8
  %35 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @bitmap_clear(i32 %36, i64 %37, i64 %38)
  %40 = load %struct.iommu_pool*, %struct.iommu_pool** %9, align 8
  %41 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.iommu_pool* @get_pool(%struct.iommu_map_table*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_clear(i32, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
