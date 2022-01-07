; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_highmem_32.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_highmem_32.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@FIX_KMAP_END = common dso_local global i64 0, align 8
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@KM_TYPE_NR = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@high_memory = common dso_local global i64 0, align 8

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
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %17 = call i64 @__fix_to_virt(i64 %16)
  %18 = icmp ule i64 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = call i32 (...) @kmap_atomic_idx()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @KM_TYPE_NR, align 4
  %23 = call i32 (...) @smp_processor_id()
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @kmap_pte, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @kpte_clear_flush(i64 %29, i64 %30)
  %32 = call i32 (...) @kmap_atomic_idx_pop()
  %33 = call i32 (...) @arch_flush_lazy_mmu_mode()
  br label %34

34:                                               ; preds = %19, %14, %1
  %35 = call i32 (...) @pagefault_enable()
  %36 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kpte_clear_flush(i64, i64) #1

declare dso_local i32 @kmap_atomic_idx_pop(...) #1

declare dso_local i32 @arch_flush_lazy_mmu_mode(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
