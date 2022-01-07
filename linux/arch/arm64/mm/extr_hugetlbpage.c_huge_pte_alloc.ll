; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PUD_SIZE = common dso_local global i64 0, align 8
@CONT_PTE_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@CONFIG_ARCH_WANT_HUGE_PMD_SHARE = common dso_local global i32 0, align 4
@CONT_PMD_SIZE = common dso_local global i64 0, align 8

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
  %18 = call i32* @pud_alloc(%struct.mm_struct* %15, i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %91

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @PUD_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** %11, align 8
  br label %89

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @CONT_PTE_SIZE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @pmd_alloc(%struct.mm_struct* %33, i32* %34, i64 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = and i64 %37, %39
  %41 = call i32 @WARN_ON(i64 %40)
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @pte_alloc_map(%struct.mm_struct* %42, i32* %43, i64 %44)
  store i32* %45, i32** %11, align 8
  br label %88

46:                                               ; preds = %28
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @PMD_SIZE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* @CONFIG_ARCH_WANT_HUGE_PMD_SHARE, align 4
  %52 = call i64 @IS_ENABLED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @READ_ONCE(i32 %56)
  %58 = call i64 @pud_none(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32* @huge_pmd_share(%struct.mm_struct* %61, i64 %62, i32* %63)
  store i32* %64, i32** %11, align 8
  br label %70

65:                                               ; preds = %54, %50
  %66 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32* @pmd_alloc(%struct.mm_struct* %66, i32* %67, i64 %68)
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %87

71:                                               ; preds = %46
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @CONT_PMD_SIZE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32* @pmd_alloc(%struct.mm_struct* %76, i32* %77, i64 %78)
  store i32* %79, i32** %10, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %81, 1
  %83 = and i64 %80, %82
  %84 = call i32 @WARN_ON(i64 %83)
  %85 = load i32*, i32** %10, align 8
  store i32* %85, i32** %4, align 8
  br label %91

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %32
  br label %89

89:                                               ; preds = %88, %26
  %90 = load i32*, i32** %11, align 8
  store i32* %90, i32** %4, align 8
  br label %91

91:                                               ; preds = %89, %75, %21
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32* @pte_alloc_map(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @huge_pmd_share(%struct.mm_struct*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
