; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_highmem.c___kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_highmem.c___kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@FIXADDR_START = common dso_local global i64 0, align 8
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@KM_TYPE_NR = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kunmap_atomic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = load i64, i64* @PAGE_MASK, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @FIXADDR_START, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (...) @pagefault_enable()
  %14 = call i32 (...) @preempt_enable()
  br label %20

15:                                               ; preds = %1
  %16 = call i32 (...) @kmap_atomic_idx()
  store i32 %16, i32* %4, align 4
  %17 = call i32 (...) @kmap_atomic_idx_pop()
  %18 = call i32 (...) @pagefault_enable()
  %19 = call i32 (...) @preempt_enable()
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kmap_atomic_idx(...) #1

declare dso_local i32 @kmap_atomic_idx_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
