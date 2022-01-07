; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping-nommu.c_arm_nommu_dma_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping-nommu.c_arm_nommu_dma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vm_area_struct = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.vm_area_struct*, i8*, i32, i64, i64)* @arm_nommu_dma_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_nommu_dma_mmap(%struct.device* %0, %struct.vm_area_struct* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %12, align 8
  %18 = call i64 @dma_mmap_from_global_coherent(%struct.vm_area_struct* %15, i8* %16, i64 %17, i32* %14)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %7, align 4
  br label %34

22:                                               ; preds = %6
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @dma_mmap_from_dev_coherent(%struct.device* %23, %struct.vm_area_struct* %24, i8* %25, i64 %26, i32* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %29, %20
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @dma_mmap_from_global_coherent(%struct.vm_area_struct*, i8*, i64, i32*) #1

declare dso_local i64 @dma_mmap_from_dev_coherent(%struct.device*, %struct.vm_area_struct*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
