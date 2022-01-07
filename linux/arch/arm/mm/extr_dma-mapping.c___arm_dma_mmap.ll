; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___arm_dma_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___arm_dma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.vm_area_struct*, i8*, i32, i64, i64)* @__arm_dma_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__arm_dma_mmap(%struct.device* %0, %struct.vm_area_struct* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %22 = call i64 @vma_pages(%struct.vm_area_struct* %21)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i64 @PAGE_ALIGN(i64 %23)
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %16, align 8
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @dma_to_pfn(%struct.device* %27, i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %18, align 8
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @dma_mmap_from_dev_coherent(%struct.device* %33, %struct.vm_area_struct* %34, i8* %35, i64 %36, i32* %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %72

41:                                               ; preds = %6
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %18, align 8
  %49 = sub i64 %47, %48
  %50 = icmp ule i64 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %18, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @remap_pfn_range(%struct.vm_area_struct* %52, i64 %55, i64 %58, i64 %65, i32 %68)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %51, %45, %41
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %39
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @dma_to_pfn(%struct.device*, i32) #1

declare dso_local i64 @dma_mmap_from_dev_coherent(%struct.device*, %struct.vm_area_struct*, i8*, i64, i32*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
