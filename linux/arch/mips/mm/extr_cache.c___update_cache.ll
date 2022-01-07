; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c___update_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c___update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_cache(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pte_no_exec(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ false, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @pte_pfn(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @pfn_valid(i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %69

29:                                               ; preds = %16
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.page* @pfn_to_page(i64 %30)
  store %struct.page* %31, %struct.page** %5, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i64 @Page_dcache_dirty(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i64 @PageHighMem(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i64 @kmap_atomic(%struct.page* %40)
  store i64 %41, i64* %7, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i64 @page_address(%struct.page* %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = and i64 %50, %51
  %53 = call i64 @pages_do_alias(i64 %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %45
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @flush_data_cache_page(i64 %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = call i64 @PageHighMem(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @__kunmap_atomic(i8* %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.page*, %struct.page** %5, align 8
  %68 = call i32 @ClearPageDcacheDirty(%struct.page* %67)
  br label %69

69:                                               ; preds = %28, %66, %29
  ret void
}

declare dso_local i32 @pte_no_exec(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @__kunmap_atomic(i8*) #1

declare dso_local i32 @ClearPageDcacheDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
