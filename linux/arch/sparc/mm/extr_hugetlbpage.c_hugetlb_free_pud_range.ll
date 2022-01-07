; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PGDIR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i64, i64, i64, i64)* @hugetlb_free_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_free_pud_range(%struct.mmu_gather* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32* @pud_offset(i32* %17, i64 %18)
  store i32* %19, i32** %13, align 8
  br label %20

20:                                               ; preds = %45, %6
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @pud_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i64 @pud_none_or_clear_bad(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %45

28:                                               ; preds = %20
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_hugetlb_pud(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @pud_clear(i32* %34)
  br label %44

36:                                               ; preds = %28
  %37 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @hugetlb_free_pmd_range(%struct.mmu_gather* %37, i32* %38, i64 %39, i64 %40, i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %36, %33
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %13, align 8
  %48 = load i64, i64* %14, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %20, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* @PGDIR_MASK, align 8
  %54 = load i64, i64* %15, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %92

60:                                               ; preds = %52
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i64, i64* @PGDIR_MASK, align 8
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %92

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %72, 1
  %74 = load i64, i64* %12, align 8
  %75 = sub i64 %74, 1
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %92

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %15, align 8
  %81 = call i32* @pud_offset(i32* %79, i64 %80)
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @pgd_clear(i32* %82)
  %84 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @pud_free_tlb(%struct.mmu_gather* %84, i32* %85, i64 %86)
  %88 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %89 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mm_dec_nr_puds(i32 %90)
  br label %92

92:                                               ; preds = %78, %77, %69, %59
  ret void
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i64 @is_hugetlb_pud(i32) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @hugetlb_free_pmd_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @pgd_clear(i32*) #1

declare dso_local i32 @pud_free_tlb(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mm_dec_nr_puds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
