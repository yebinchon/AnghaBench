; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c___pte_to_rste.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c___pte_to_rste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_READ = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_WRITE = common dso_local global i32 0, align 4
@_PAGE_INVALID = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_INVALID = common dso_local global i32 0, align 4
@_PAGE_PROTECT = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_PROTECT = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_DIRTY = common dso_local global i32 0, align 4
@_PAGE_YOUNG = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_YOUNG = common dso_local global i32 0, align 4
@_PAGE_NOEXEC = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_NOEXEC = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_PAGE_SOFT_DIRTY = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_SOFT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @__pte_to_rste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__pte_to_rste(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @pte_present(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @pte_val(i32 %8)
  %10 = load i64, i64* @PAGE_MASK, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @pte_val(i32 %12)
  %14 = load i32, i32* @_PAGE_READ, align 4
  %15 = load i32, i32* @_SEGMENT_ENTRY_READ, align 4
  %16 = call i64 @move_set_bit(i64 %13, i32 %14, i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @pte_val(i32 %19)
  %21 = load i32, i32* @_PAGE_WRITE, align 4
  %22 = load i32, i32* @_SEGMENT_ENTRY_WRITE, align 4
  %23 = call i64 @move_set_bit(i64 %20, i32 %21, i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @pte_val(i32 %26)
  %28 = load i32, i32* @_PAGE_INVALID, align 4
  %29 = load i32, i32* @_SEGMENT_ENTRY_INVALID, align 4
  %30 = call i64 @move_set_bit(i64 %27, i32 %28, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @pte_val(i32 %33)
  %35 = load i32, i32* @_PAGE_PROTECT, align 4
  %36 = load i32, i32* @_SEGMENT_ENTRY_PROTECT, align 4
  %37 = call i64 @move_set_bit(i64 %34, i32 %35, i32 %36)
  %38 = load i64, i64* %3, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %3, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @pte_val(i32 %40)
  %42 = load i32, i32* @_PAGE_DIRTY, align 4
  %43 = load i32, i32* @_SEGMENT_ENTRY_DIRTY, align 4
  %44 = call i64 @move_set_bit(i64 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %3, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @pte_val(i32 %47)
  %49 = load i32, i32* @_PAGE_YOUNG, align 4
  %50 = load i32, i32* @_SEGMENT_ENTRY_YOUNG, align 4
  %51 = call i64 @move_set_bit(i64 %48, i32 %49, i32 %50)
  %52 = load i64, i64* %3, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %3, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @pte_val(i32 %54)
  %56 = load i32, i32* @_PAGE_NOEXEC, align 4
  %57 = load i32, i32* @_SEGMENT_ENTRY_NOEXEC, align 4
  %58 = call i64 @move_set_bit(i64 %55, i32 %56, i32 %57)
  %59 = load i64, i64* %3, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %3, align 8
  br label %63

61:                                               ; preds = %1
  %62 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %7
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @move_set_bit(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
