; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@force_iommu = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @gart_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gart_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i64, i64* %11, align 8
  %18 = call i8* @dma_direct_alloc_pages(%struct.device* %13, i64 %14, i32* %15, i32 %16, i64 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load i32, i32* @force_iommu, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @DMA_BIT_MASK(i32 24)
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %21, %5
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %6, align 8
  br label %63

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @virt_to_phys(i8* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @get_order(i64 %38)
  %40 = shl i64 1, %39
  %41 = sub i64 %40, 1
  %42 = call i32 @dma_map_area(%struct.device* %33, i32 %35, i64 %36, i32 %37, i64 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = call i32 (...) @flush_gart()
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %55

53:                                               ; preds = %32
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %6, align 8
  br label %63

55:                                               ; preds = %52
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @dma_direct_free_pages(%struct.device* %56, i64 %57, i8* %58, i32 %60, i64 %61)
  store i8* null, i8** %6, align 8
  br label %63

63:                                               ; preds = %55, %53, %30
  %64 = load i8*, i8** %6, align 8
  ret i8* %64
}

declare dso_local i8* @dma_direct_alloc_pages(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_map_area(%struct.device*, i32, i64, i32, i64) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @flush_gart(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_direct_free_pages(%struct.device*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
