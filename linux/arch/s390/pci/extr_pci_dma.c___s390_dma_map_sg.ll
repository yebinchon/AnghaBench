; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___s390_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___s390_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i64, i64 }
%struct.zpci_dev = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ZPCI_PTE_VALID = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ZPCI_TABLE_PROTECTED = common dso_local global i32 0, align 4
@ZPCI_PTE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"map error:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i64, i64*, i32)* @__s390_dma_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s390_dma_map_sg(%struct.device* %0, %struct.scatterlist* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zpci_dev*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @PAGE_ALIGN(i64 %20)
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @to_pci_dev(%struct.device* %24)
  %26 = call %struct.zpci_dev* @to_zpci(i32 %25)
  store %struct.zpci_dev* %26, %struct.zpci_dev** %13, align 8
  %27 = load i32, i32* @ZPCI_PTE_VALID, align 4
  store i32 %27, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @dma_alloc_address(%struct.device* %28, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %124

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @DMA_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @ZPCI_TABLE_PROTECTED, align 4
  %48 = load i32, i32* %16, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %51, %struct.scatterlist** %17, align 8
  br label %52

52:                                               ; preds = %87, %50
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %60 = call i32 @sg_page(%struct.scatterlist* %59)
  %61 = call i64 @page_to_phys(i32 %60)
  store i64 %61, i64* %18, align 8
  %62 = load %struct.zpci_dev*, %struct.zpci_dev** %13, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @__dma_update_trans(%struct.zpci_dev* %62, i64 %63, i64 %64, i64 %71, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  br label %107

77:                                               ; preds = %58
  %78 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %15, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %89 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %88)
  store %struct.scatterlist* %89, %struct.scatterlist** %17, align 8
  br label %52

90:                                               ; preds = %52
  %91 = load %struct.zpci_dev*, %struct.zpci_dev** %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @__dma_purge_tlb(%struct.zpci_dev* %91, i64 %92, i64 %93, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %107

99:                                               ; preds = %90
  %100 = load i64, i64* %14, align 8
  %101 = load i64*, i64** %10, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.zpci_dev*, %struct.zpci_dev** %13, align 8
  %104 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %103, i32 0, i32 0
  %105 = call i32 @atomic64_add(i64 %102, i32* %104)
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %6, align 4
  br label %124

107:                                              ; preds = %98, %76
  %108 = load %struct.zpci_dev*, %struct.zpci_dev** %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %14, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load i32, i32* @ZPCI_PTE_INVALID, align 4
  %114 = call i32 @dma_update_trans(%struct.zpci_dev* %108, i32 0, i64 %109, i64 %112, i32 %113)
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @dma_free_address(%struct.device* %115, i64 %116, i64 %117)
  %119 = call i32 @zpci_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* %19, align 4
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @zpci_err_dma(i32 %120, i64 %121)
  %123 = load i32, i32* %19, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %107, %99, %34
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @dma_alloc_address(%struct.device*, i64) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @__dma_update_trans(%struct.zpci_dev*, i64, i64, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @__dma_purge_tlb(%struct.zpci_dev*, i64, i64, i32) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @dma_update_trans(%struct.zpci_dev*, i32, i64, i64, i32) #1

declare dso_local i32 @dma_free_address(%struct.device*, i64, i64) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_dma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
