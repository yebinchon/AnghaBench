; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___arm_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c___arm_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.arm_dma_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.arm_dma_free_args*)* }
%struct.arm_dma_free_args = type { i8*, i32, %struct.page*, i32, %struct.device* }

@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Freeing invalid buffer %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32, i64, i32)* @__arm_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_dma_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.arm_dma_buffer*, align 8
  %15 = alloca %struct.arm_dma_free_args, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dma_to_pfn(%struct.device* %16, i32 %17)
  %19 = call %struct.page* @pfn_to_page(i32 %18)
  store %struct.page* %19, %struct.page** %13, align 8
  %20 = getelementptr inbounds %struct.arm_dma_free_args, %struct.arm_dma_free_args* %15, i32 0, i32 0
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.arm_dma_free_args, %struct.arm_dma_free_args* %15, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %25 = and i64 %23, %24
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %22, align 8
  %28 = getelementptr inbounds %struct.arm_dma_free_args, %struct.arm_dma_free_args* %15, i32 0, i32 2
  %29 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %29, %struct.page** %28, align 8
  %30 = getelementptr inbounds %struct.arm_dma_free_args, %struct.arm_dma_free_args* %15, i32 0, i32 3
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @PAGE_ALIGN(i64 %31)
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.arm_dma_free_args, %struct.arm_dma_free_args* %15, i32 0, i32 4
  %34 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %34, %struct.device** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call %struct.arm_dma_buffer* @arm_dma_buffer_find(i8* %35)
  store %struct.arm_dma_buffer* %36, %struct.arm_dma_buffer** %14, align 8
  %37 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %14, align 8
  %38 = icmp ne %struct.arm_dma_buffer* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @WARN(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %6
  br label %54

45:                                               ; preds = %6
  %46 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %14, align 8
  %47 = getelementptr inbounds %struct.arm_dma_buffer, %struct.arm_dma_buffer* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.arm_dma_free_args*)*, i32 (%struct.arm_dma_free_args*)** %49, align 8
  %51 = call i32 %50(%struct.arm_dma_free_args* %15)
  %52 = load %struct.arm_dma_buffer*, %struct.arm_dma_buffer** %14, align 8
  %53 = call i32 @kfree(%struct.arm_dma_buffer* %52)
  br label %54

54:                                               ; preds = %45, %44
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @dma_to_pfn(%struct.device*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.arm_dma_buffer* @arm_dma_buffer_find(i8*) #1

declare dso_local i64 @WARN(i32, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.arm_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
