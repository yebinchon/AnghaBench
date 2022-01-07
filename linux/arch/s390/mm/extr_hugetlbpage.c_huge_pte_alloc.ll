; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
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
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @pgd_offset(%struct.mm_struct* %12, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @p4d_alloc(%struct.mm_struct* %15, i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @pud_alloc(%struct.mm_struct* %22, i32* %23, i64 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PUD_SIZE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %4, align 8
  br label %48

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PMD_SIZE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32* @pmd_alloc(%struct.mm_struct* %39, i32* %40, i64 %41)
  store i32* %42, i32** %11, align 8
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %21
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @p4d_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
