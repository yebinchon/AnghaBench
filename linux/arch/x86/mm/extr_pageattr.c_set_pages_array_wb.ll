; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_set_pages_array_wb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_set_pages_array_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@_PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_pages_array_wb(%struct.page** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.page**, %struct.page*** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %13 = call i32 @__pgprot(i32 %12)
  %14 = call i32 @cpa_clear_pages_array(%struct.page** %10, i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.page**, %struct.page*** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = call i64 @PageHighMem(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.page**, %struct.page*** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %36
  %38 = load %struct.page*, %struct.page** %37, align 8
  %39 = call i64 @page_to_pfn(%struct.page* %38)
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = shl i64 %39, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @free_memtype(i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %33, %32
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %20

51:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @cpa_clear_pages_array(%struct.page**, i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
