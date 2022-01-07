; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_s390_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i32 }
%struct.page = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @s390_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s390_dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.zpci_dev*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 @to_pci_dev(%struct.device* %16)
  %18 = call %struct.zpci_dev* @to_zpci(i32 %17)
  store %struct.zpci_dev* %18, %struct.zpci_dev** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @get_order(i64 %24)
  %26 = call %struct.page* @alloc_pages(i32 %23, i32 %25)
  store %struct.page* %26, %struct.page** %13, align 8
  %27 = load %struct.page*, %struct.page** %13, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %62

30:                                               ; preds = %5
  %31 = load %struct.page*, %struct.page** %13, align 8
  %32 = call i64 @page_to_phys(%struct.page* %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.page*, %struct.page** %13, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %37 = call i32 @s390_dma_map_pages(%struct.device* %33, %struct.page* %34, i32 0, i64 %35, i32 %36, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @dma_mapping_error(%struct.device* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @get_order(i64 %44)
  %46 = call i32 @free_pages(i64 %43, i32 %45)
  store i8* null, i8** %6, align 8
  br label %62

47:                                               ; preds = %30
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = udiv i64 %48, %49
  %51 = load %struct.zpci_dev*, %struct.zpci_dev** %12, align 8
  %52 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %51, i32 0, i32 0
  %53 = call i32 @atomic64_add(i64 %50, i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i64, i64* %14, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %59, %42, %29
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @s390_dma_map_pages(%struct.device*, %struct.page*, i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
