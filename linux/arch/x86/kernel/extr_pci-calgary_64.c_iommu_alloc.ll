; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_iommu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_iommu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i32 }

@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate %u pages in iommu %p\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i8*, i32, i32)* @iommu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_alloc(%struct.device* %0, %struct.iommu_table* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.iommu_table*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @iommu_range_alloc(%struct.device* %14, %struct.iommu_table* %15, i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.iommu_table* %26)
  %28 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %28, i64* %6, align 8
  br label %49

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = shl i64 %30, %31
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* @PAGE_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  %38 = or i64 %32, %37
  store i64 %38, i64* %13, align 8
  %39 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i64, i64* @PAGE_MASK, align 8
  %45 = and i64 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @tce_build(%struct.iommu_table* %39, i64 %40, i32 %41, i64 %45, i32 %46)
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %29, %24
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i64 @iommu_range_alloc(%struct.device*, %struct.iommu_table*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, %struct.iommu_table*) #1

declare dso_local i32 @tce_build(%struct.iommu_table*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
