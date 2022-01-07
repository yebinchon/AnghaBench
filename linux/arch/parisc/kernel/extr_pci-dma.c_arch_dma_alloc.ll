; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_arch_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_arch_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32* }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcxl2 = common dso_local global i64 0, align 8
@pcxl = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arch_dma_alloc(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %16 = load i64, i64* @pcxl2, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %20 = load i64, i64* @pcxl, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %6, align 8
  br label %51

23:                                               ; preds = %18, %5
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @get_order(i64 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 1, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @pcxl_alloc_range(i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @__GFP_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @__get_free_pages(i32 %35, i32 %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @flush_kernel_dcache_range(i64 %38, i64 %39)
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @__pa(i64 %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @map_uncached_pages(i64 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %13, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %23, %22
  %52 = load i8*, i8** %6, align 8
  ret i8* %52
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @pcxl_alloc_range(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @flush_kernel_dcache_range(i64, i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @map_uncached_pages(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
