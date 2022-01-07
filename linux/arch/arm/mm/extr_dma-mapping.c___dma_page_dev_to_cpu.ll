; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_page_dev_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___dma_page_dev_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@dmac_unmap_area = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PG_dcache_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64, i64, i32)* @__dma_page_dev_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dma_page_dev_to_cpu(%struct.page* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i64 @page_to_phys(%struct.page* %12)
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @outer_inv_range(i64 %20, i64 %23)
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @dmac_unmap_area, align 4
  %30 = call i32 @dma_cache_maint_page(%struct.page* %25, i64 %26, i64 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i64 @page_to_pfn(%struct.page* %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = udiv i64 %43, %44
  %46 = add i64 %42, %45
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = load i64, i64* %6, align 8
  %49 = urem i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %52, %39
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  %68 = trunc i64 %66 to i32
  %69 = call %struct.page* @pfn_to_page(i32 %68)
  store %struct.page* %69, %struct.page** %5, align 8
  %70 = load i32, i32* @PG_dcache_clean, align 4
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = getelementptr inbounds %struct.page, %struct.page* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %11, align 8
  br label %61

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %35, %31
  ret void
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @outer_inv_range(i64, i64) #1

declare dso_local i32 @dma_cache_maint_page(%struct.page*, i64, i64, i32, i32) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
