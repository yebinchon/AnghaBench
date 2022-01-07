; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_dma_map_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_dma_map_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GART_MAX_PHYS_ADDR = common dso_local global i64 0, align 8
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@panic_on_overflow = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"dma_map_area overflow %lu bytes\0A\00", align 1
@iommu_gatt_base = common dso_local global i32* null, align 8
@iommu_bus_base = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64, i64, i32, i64)* @dma_map_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_map_area(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = call i64 @iommu_num_pages(i64 %15, i64 %16, i64 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @GART_MAX_PHYS_ADDR, align 8
  %23 = icmp ugt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %28, i64* %6, align 8
  br label %88

29:                                               ; preds = %5
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @alloc_iommu(%struct.device* %30, i64 %31, i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @nonforced_iommu(%struct.device* %37, i64 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %88

44:                                               ; preds = %36
  %45 = load i64, i64* @panic_on_overflow, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @iommu_full(%struct.device* %51, i64 %52, i32 %53)
  %55 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %55, i64* %6, align 8
  br label %88

56:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @GPTE_ENCODE(i64 %63)
  %65 = load i32*, i32** @iommu_gatt_base, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load i64, i64* @iommu_bus_base, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = mul i64 %79, %80
  %82 = add i64 %78, %81
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @PAGE_MASK, align 8
  %85 = xor i64 %84, -1
  %86 = and i64 %83, %85
  %87 = add i64 %82, %86
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %77, %50, %42, %27
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i64 @iommu_num_pages(i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @alloc_iommu(%struct.device*, i64, i64) #1

declare dso_local i32 @nonforced_iommu(%struct.device*, i64, i64) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @iommu_full(%struct.device*, i64, i32) #1

declare dso_local i32 @GPTE_ENCODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
