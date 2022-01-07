; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_dma-noncoherent.c_dma_sync_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_dma-noncoherent.c_dma_sync_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @dma_sync_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_sync_phys(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = call %struct.page* @pfn_to_page(i64 %14)
  store %struct.page* %15, %struct.page** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %61, %3
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i64 @PageHighMem(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i8* @kmap_atomic(%struct.page* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dma_sync_virt(i8* %41, i64 %42, i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @kunmap_atomic(i8* %45)
  br label %55

47:                                               ; preds = %21
  %48 = load %struct.page*, %struct.page** %7, align 8
  %49 = call i8* @page_address(%struct.page* %48)
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dma_sync_virt(i8* %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %36
  store i64 0, i64* %8, align 8
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 1
  store %struct.page* %57, %struct.page** %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %21, label %64

64:                                               ; preds = %61
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @dma_sync_virt(i8*, i64, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
