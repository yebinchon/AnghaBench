; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.zpci_dev = type { i32 }

@ZPCI_PTE_VALID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ZPCI_TABLE_PROTECTED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"map error:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @s390_dma_map_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s390_dma_map_pages(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.zpci_dev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = call i32 @to_pci_dev(%struct.device* %20)
  %22 = call %struct.zpci_dev* @to_zpci(i32 %21)
  store %struct.zpci_dev* %22, %struct.zpci_dev** %14, align 8
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = call i64 @page_to_phys(%struct.page* %23)
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load i32, i32* @ZPCI_PTE_VALID, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = call i64 @iommu_num_pages(i64 %28, i64 %29, i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i64 @dma_alloc_address(%struct.device* %32, i64 %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %19, align 4
  br label %82

41:                                               ; preds = %6
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @DMA_NONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @ZPCI_TABLE_PROTECTED, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.zpci_dev*, %struct.zpci_dev** %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @dma_update_trans(%struct.zpci_dev* %57, i64 %58, i64 %59, i64 %60, i32 %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %77

66:                                               ; preds = %56
  %67 = load i64, i64* %17, align 8
  %68 = load %struct.zpci_dev*, %struct.zpci_dev** %14, align 8
  %69 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %68, i32 0, i32 0
  %70 = call i32 @atomic64_add(i64 %67, i32* %69)
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @PAGE_MASK, align 8
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  %76 = add i64 %71, %75
  store i64 %76, i64* %7, align 8
  br label %88

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @dma_free_address(%struct.device* %78, i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %77, %38
  %83 = call i32 @zpci_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %19, align 4
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @zpci_err_dma(i32 %84, i64 %85)
  %87 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %82, %66
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i64 @iommu_num_pages(i64, i64, i64) #1

declare dso_local i64 @dma_alloc_address(%struct.device*, i64) #1

declare dso_local i32 @dma_update_trans(%struct.zpci_dev*, i64, i64, i64, i32) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @dma_free_address(%struct.device*, i64, i64) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_dma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
