; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_highmem.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_highmem.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXADDR_START = common dso_local global i64 0, align 8
@FIXADDR_TOP = common dso_local global i64 0, align 8
@init_mm = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kunmap_atomic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i64, i64* @FIXADDR_START, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = icmp uge i8* %4, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i64, i64* @FIXADDR_TOP, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = call i32 (...) @kmap_atomic_idx()
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i32 @DCACHE_ALIAS(i64 %16)
  %18 = call i32 @kmap_idx(i32 %14, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* @kmap_pte, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @pte_clear(i32* @init_mm, i8* %19, i64 %23)
  %25 = load i8*, i8** %2, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i8*, i8** %2, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @local_flush_tlb_kernel_range(i64 %26, i64 %30)
  %32 = call i32 (...) @kmap_atomic_idx_pop()
  br label %33

33:                                               ; preds = %13, %8, %1
  %34 = call i32 (...) @pagefault_enable()
  %35 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @kmap_idx(i32, i32) #1

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @DCACHE_ALIAS(i64) #1

declare dso_local i32 @pte_clear(i32*, i8*, i64) #1

declare dso_local i32 @local_flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @kmap_atomic_idx_pop(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
