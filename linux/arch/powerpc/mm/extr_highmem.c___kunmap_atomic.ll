; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_highmem.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_highmem.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@FIX_KMAP_END = common dso_local global i64 0, align 8
@CONFIG_DEBUG_HIGHMEM = common dso_local global i32 0, align 4
@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@init_mm = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i64 0, align 8

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
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FIX_KMAP_END, align 8
  %12 = call i64 @__fix_to_virt(i64 %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (...) @pagefault_enable()
  %16 = call i32 (...) @preempt_enable()
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @CONFIG_DEBUG_HIGHMEM, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = call i32 (...) @kmap_atomic_idx()
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @KM_TYPE_NR, align 4
  %25 = call i32 (...) @smp_processor_id()
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i64 @__fix_to_virt(i64 %32)
  %34 = icmp ne i64 %28, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @kmap_pte, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = call i32 @pte_clear(i32* @init_mm, i64 %37, i64 %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @local_flush_tlb_page(i32* null, i64 %43)
  br label %45

45:                                               ; preds = %21, %17
  %46 = call i32 (...) @kmap_atomic_idx_pop()
  %47 = call i32 (...) @pagefault_enable()
  %48 = call i32 (...) @preempt_enable()
  br label %49

49:                                               ; preds = %45, %14
  ret void
}

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pte_clear(i32*, i64, i64) #1

declare dso_local i32 @local_flush_tlb_page(i32*, i64) #1

declare dso_local i32 @kmap_atomic_idx_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
