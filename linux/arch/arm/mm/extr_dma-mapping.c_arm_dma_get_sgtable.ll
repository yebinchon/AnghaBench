; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arm_dma_get_sgtable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arm_dma_get_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_dma_get_sgtable(%struct.device* %0, %struct.sg_table* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.sg_table* %1, %struct.sg_table** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @dma_to_pfn(%struct.device* %17, i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @pfn_valid(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %45

26:                                               ; preds = %6
  %27 = load i64, i64* %14, align 8
  %28 = call %struct.page* @pfn_to_page(i64 %27)
  store %struct.page* %28, %struct.page** %15, align 8
  %29 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @sg_alloc_table(%struct.sg_table* %29, i32 1, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %39 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.page*, %struct.page** %15, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @PAGE_ALIGN(i64 %42)
  %44 = call i32 @sg_set_page(i32 %40, %struct.page* %41, i32 %43, i32 0)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %35, %23
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i64 @dma_to_pfn(%struct.device*, i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
