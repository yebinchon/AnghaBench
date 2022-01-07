; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PUD_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_alloc(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @pgd_offset(%struct.mm_struct* %11, i64 %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @pud_alloc(%struct.mm_struct* %14, i32* %15, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PUD_SIZE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  store i32* %26, i32** %4, align 8
  br label %46

27:                                               ; preds = %21
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @pmd_alloc(%struct.mm_struct* %28, i32* %29, i64 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %46

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PMD_SIZE, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  store i32* %40, i32** %4, align 8
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @pte_alloc_map(%struct.mm_struct* %42, i32* %43, i64 %44)
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %41, %39, %34, %25, %20
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pte_alloc_map(%struct.mm_struct*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
