; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_num_contig_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_num_contig_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONT_PMDS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@CONT_PTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @num_contig_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_contig_ptes(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64*, i64** %4, align 8
  store i64 %6, i64* %7, align 8
  %8 = load i64, i64* %3, align 8
  switch i64 %8, label %17 [
    i64 129, label %9
    i64 131, label %10
    i64 130, label %13
  ]

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i64*, i64** %4, align 8
  store i64 129, i64* %11, align 8
  %12 = load i32, i32* @CONT_PMDS, align 4
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = load i64*, i64** %4, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @CONT_PTES, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %2, %13, %10, %9
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
