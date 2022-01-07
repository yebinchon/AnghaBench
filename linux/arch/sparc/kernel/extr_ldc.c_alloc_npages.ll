; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_alloc_npages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_alloc_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_mtable_entry = type { i32 }
%struct.ldc_iommu = type { %struct.ldc_mtable_entry*, i32 }

@IOMMU_ERROR_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ldc_mtable_entry* (%struct.ldc_iommu*, i64)* @alloc_npages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ldc_mtable_entry* @alloc_npages(%struct.ldc_iommu* %0, i64 %1) #0 {
  %3 = alloca %struct.ldc_mtable_entry*, align 8
  %4 = alloca %struct.ldc_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ldc_iommu* %0, %struct.ldc_iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ldc_iommu*, %struct.ldc_iommu** %4, align 8
  %8 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @iommu_tbl_range_alloc(i32* null, i32* %8, i64 %9, i32* null, i64 -1, i32 0)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.ldc_mtable_entry* null, %struct.ldc_mtable_entry** %3, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.ldc_iommu*, %struct.ldc_iommu** %4, align 8
  %20 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %19, i32 0, i32 0
  %21 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %21, i64 %22
  store %struct.ldc_mtable_entry* %23, %struct.ldc_mtable_entry** %3, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %3, align 8
  ret %struct.ldc_mtable_entry* %25
}

declare dso_local i64 @iommu_tbl_range_alloc(i32*, i32*, i64, i32*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
