; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_pci-dma.c_arch_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_pci-dma.c_arch_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_dma_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @platform_vaddr_uncached(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @platform_vaddr_to_cached(i8* %21)
  %23 = call %struct.page* @virt_to_page(i32 %22)
  store %struct.page* %23, %struct.page** %12, align 8
  br label %30

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dma_to_phys(%struct.device* %25, i32 %26)
  %28 = call i32 @PHYS_PFN(i32 %27)
  %29 = call %struct.page* @pfn_to_page(i32 %28)
  store %struct.page* %29, %struct.page** %12, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @dma_release_from_contiguous(%struct.device* %31, %struct.page* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @get_order(i64 %38)
  %40 = call i32 @__free_pages(%struct.page* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @platform_vaddr_uncached(i8*) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @platform_vaddr_to_cached(i8*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @PHYS_PFN(i32) #1

declare dso_local i32 @dma_to_phys(%struct.device*, i32) #1

declare dso_local i32 @dma_release_from_contiguous(%struct.device*, %struct.page*, i64) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
