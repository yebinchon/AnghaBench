; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_cma_allocator_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_cma_allocator_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_dma_alloc_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.arm_dma_alloc_args*, %struct.page**)* @cma_allocator_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cma_allocator_alloc(%struct.arm_dma_alloc_args* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.arm_dma_alloc_args*, align 8
  %4 = alloca %struct.page**, align 8
  store %struct.arm_dma_alloc_args* %0, %struct.arm_dma_alloc_args** %3, align 8
  store %struct.page** %1, %struct.page*** %4, align 8
  %5 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %6 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %9 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %12 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.page**, %struct.page*** %4, align 8
  %15 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %16 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %19 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %22 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.arm_dma_alloc_args*, %struct.arm_dma_alloc_args** %3, align 8
  %25 = getelementptr inbounds %struct.arm_dma_alloc_args, %struct.arm_dma_alloc_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__alloc_from_contiguous(i32 %7, i32 %10, i32 %13, %struct.page** %14, i32 %17, i32 %20, i32 %23, i32 %26)
  ret i8* %27
}

declare dso_local i8* @__alloc_from_contiguous(i32, i32, i32, %struct.page**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
