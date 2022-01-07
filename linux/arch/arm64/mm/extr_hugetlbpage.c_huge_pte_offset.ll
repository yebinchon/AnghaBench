; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_pte_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_pte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PUD_SIZE = common dso_local global i64 0, align 8
@CONT_PMD_SIZE = common dso_local global i64 0, align 8
@CONT_PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@CONT_PTE_SIZE = common dso_local global i64 0, align 8
@CONT_PTE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_offset(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32* @pgd_offset(%struct.mm_struct* %13, i64 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @READ_ONCE(i32 %17)
  %19 = call i32 @pgd_present(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %95

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @pud_offset(i32* %23, i64 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @READ_ONCE(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PUD_SIZE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @pud_none(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %95

37:                                               ; preds = %32, %22
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @pud_huge(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pud_present(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %4, align 8
  br label %95

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @CONT_PMD_SIZE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* @CONT_PMD_MASK, align 8
  %53 = load i64, i64* %6, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32* @pmd_offset(i32* %56, i64 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @READ_ONCE(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PMD_SIZE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @CONT_PMD_SIZE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @pmd_none(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32* null, i32** %4, align 8
  br label %95

74:                                               ; preds = %69, %65, %55
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @pmd_huge(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @pmd_present(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78, %74
  %83 = load i32*, i32** %11, align 8
  store i32* %83, i32** %4, align 8
  br label %95

84:                                               ; preds = %78
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @CONT_PTE_SIZE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @CONT_PTE_MASK, align 8
  %92 = and i64 %90, %91
  %93 = call i32* @pte_offset_kernel(i32* %89, i64 %92)
  store i32* %93, i32** %4, align 8
  br label %95

94:                                               ; preds = %84
  store i32* null, i32** %4, align 8
  br label %95

95:                                               ; preds = %94, %88, %82, %73, %45, %36, %21
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_huge(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_huge(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
