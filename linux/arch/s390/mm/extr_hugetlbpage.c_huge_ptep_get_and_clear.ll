; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_ptep_get_and_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_ptep_get_and_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@_REGION_ENTRY_TYPE_MASK = common dso_local global i32 0, align 4
@_REGION_ENTRY_TYPE_R3 = common dso_local global i32 0, align 4
@_REGION3_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huge_ptep_get_and_clear(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @huge_ptep_get(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pte_val(i32 %15)
  %17 = load i32, i32* @_REGION_ENTRY_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @_REGION_ENTRY_TYPE_R3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @_REGION3_ENTRY_EMPTY, align 4
  %26 = call i32 @__pud(i32 %25)
  %27 = call i32 @pudp_xchg_direct(%struct.mm_struct* %22, i64 %23, i32* %24, i32 %26)
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @_SEGMENT_ENTRY_EMPTY, align 4
  %33 = call i32 @__pmd(i32 %32)
  %34 = call i32 @pmdp_xchg_direct(%struct.mm_struct* %29, i64 %30, i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @pudp_xchg_direct(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32 @pmdp_xchg_direct(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @__pmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
