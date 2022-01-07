; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_highmem.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_highmem.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@FIXADDR_START = common dso_local global i64 0, align 8
@FIX_KMAP_BEGIN = common dso_local global i32 0, align 4
@KM_TYPE_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LAST_PKMAP = common dso_local global i32 0, align 4
@pkmap_page_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kunmap_atomic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = and i64 %7, %8
  store i64 %9, i64* %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* @FIXADDR_START, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = icmp uge i8* %10, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = call i32 (...) @kmap_atomic_idx()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @FIX_KMAP_BEGIN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @KM_TYPE_NR, align 4
  %20 = call i32 (...) @smp_processor_id()
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = call i64 (...) @cache_is_vivt()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i64, i64* %3, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @__cpuc_flush_dcache_area(i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %14
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (...) @kmap_atomic_idx_pop()
  br label %51

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @PKMAP_ADDR(i32 0)
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = load i32, i32* @LAST_PKMAP, align 4
  %40 = call i64 @PKMAP_ADDR(i32 %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** @pkmap_page_table, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @PKMAP_NR(i64 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pte_page(i32 %47)
  %49 = call i32 @kunmap_high(i32 %48)
  br label %50

50:                                               ; preds = %42, %37, %33
  br label %51

51:                                               ; preds = %50, %30
  %52 = call i32 (...) @pagefault_enable()
  %53 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @__cpuc_flush_dcache_area(i8*, i32) #1

declare dso_local i32 @kmap_atomic_idx_pop(...) #1

declare dso_local i64 @PKMAP_ADDR(i32) #1

declare dso_local i32 @kunmap_high(i32) #1

declare dso_local i32 @pte_page(i32) #1

declare dso_local i64 @PKMAP_NR(i64) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
