; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_free_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu* }
%struct.iommu = type { i32 }

@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32, i64)* @dma_4u_free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iommu*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @IO_PAGE_ALIGN(i64 %14)
  %16 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %13, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.iommu*, %struct.iommu** %20, align 8
  store %struct.iommu* %21, %struct.iommu** %11, align 8
  %22 = load %struct.iommu*, %struct.iommu** %11, align 8
  %23 = getelementptr inbounds %struct.iommu, %struct.iommu* %22, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %27 = call i32 @iommu_tbl_range_free(i32* %23, i32 %24, i64 %25, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @get_order(i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %30, 10
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @free_pages(i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %5
  ret void
}

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @iommu_tbl_range_free(i32*, i32, i64, i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
