; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_unmap_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_unmap_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ZPCI_PTE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"unmap error:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i64, i32, i64)* @s390_dma_unmap_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_dma_unmap_pages(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.zpci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_pci_dev(%struct.device* %14)
  %16 = call %struct.zpci_dev* @to_zpci(i32 %15)
  store %struct.zpci_dev* %16, %struct.zpci_dev** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @iommu_num_pages(i32 %17, i64 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @ZPCI_PTE_INVALID, align 4
  %30 = call i32 @dma_update_trans(%struct.zpci_dev* %24, i32 0, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = call i32 @zpci_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @zpci_err_dma(i32 %35, i32 %36)
  br label %47

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 0
  %42 = call i32 @atomic64_add(i32 %39, i32* %41)
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dma_free_address(%struct.device* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  ret void
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @iommu_num_pages(i32, i64, i32) #1

declare dso_local i32 @dma_update_trans(%struct.zpci_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_dma(i32, i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @dma_free_address(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
