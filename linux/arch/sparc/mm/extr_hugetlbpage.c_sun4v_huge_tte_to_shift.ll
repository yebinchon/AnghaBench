; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_sun4v_huge_tte_to_shift.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_sun4v_huge_tte_to_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_SZALL_4V = common dso_local global i64 0, align 8
@HPAGE_16GB_SHIFT = common dso_local global i32 0, align 4
@HPAGE_2GB_SHIFT = common dso_local global i32 0, align 4
@HPAGE_256MB_SHIFT = common dso_local global i32 0, align 4
@REAL_HPAGE_SHIFT = common dso_local global i32 0, align 4
@HPAGE_64K_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sun4v_huge_tte_to_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4v_huge_tte_to_shift(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @pte_val(i32 %5)
  %7 = load i64, i64* @_PAGE_SZALL_4V, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  switch i64 %9, label %20 [
    i64 132, label %10
    i64 130, label %12
    i64 131, label %14
    i64 129, label %16
    i64 128, label %18
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HPAGE_16GB_SHIFT, align 4
  store i32 %11, i32* %4, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @HPAGE_2GB_SHIFT, align 4
  store i32 %13, i32* %4, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @HPAGE_256MB_SHIFT, align 4
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @REAL_HPAGE_SHIFT, align 4
  store i32 %17, i32* %4, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @HPAGE_64K_SHIFT, align 4
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
