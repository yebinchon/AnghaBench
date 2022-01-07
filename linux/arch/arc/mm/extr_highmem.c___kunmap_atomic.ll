; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_highmem.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_highmem.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXMAP_BASE = common dso_local global i64 0, align 8
@FIXMAP_SIZE = common dso_local global i64 0, align 8
@KM_TYPE_NR = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@fixmap_page_table = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kunmap_atomic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @FIXMAP_BASE, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @FIXMAP_BASE, align 8
  %14 = load i64, i64* @FIXMAP_SIZE, align 8
  %15 = add i64 %13, %14
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = call i32 (...) @kmap_atomic_idx()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @KM_TYPE_NR, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @FIXMAP_ADDR(i32 %25)
  %27 = icmp ne i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @fixmap_page_table, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @pte_clear(i32* @init_mm, i64 %30, i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @local_flush_tlb_kernel_range(i64 %36, i64 %39)
  %41 = call i32 (...) @kmap_atomic_idx_pop()
  br label %42

42:                                               ; preds = %17, %11, %1
  %43 = call i32 (...) @pagefault_enable()
  %44 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @FIXMAP_ADDR(i32) #1

declare dso_local i32 @pte_clear(i32*, i64, i64) #1

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
