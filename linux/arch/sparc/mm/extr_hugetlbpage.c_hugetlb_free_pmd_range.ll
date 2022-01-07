; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PUD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i64, i64, i64, i64)* @hugetlb_free_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_free_pmd_range(%struct.mmu_gather* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
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
  %19 = call i32* @pmd_offset(i32* %17, i64 %18)
  store i32* %19, i32** %13, align 8
  br label %20

20:                                               ; preds = %43, %6
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @pmd_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pmd_none(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %43

29:                                               ; preds = %20
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_hugetlb_pmd(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @pmd_clear(i32* %35)
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @hugetlb_free_pte_range(%struct.mmu_gather* %38, i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %13, align 8
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %20, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* @PUD_MASK, align 8
  %52 = load i64, i64* %15, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %90

58:                                               ; preds = %50
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i64, i64* @PUD_MASK, align 8
  %63 = load i64, i64* %12, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %90

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 1
  %72 = load i64, i64* %12, align 8
  %73 = sub i64 %72, 1
  %74 = icmp ugt i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %90

76:                                               ; preds = %69
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i32* @pmd_offset(i32* %77, i64 %78)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @pud_clear(i32* %80)
  %82 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i64, i64* %15, align 8
  %85 = call i32 @pmd_free_tlb(%struct.mmu_gather* %82, i32* %83, i64 %84)
  %86 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %87 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mm_dec_nr_pmds(i32 %88)
  br label %90

90:                                               ; preds = %76, %75, %67, %57
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @is_hugetlb_pmd(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @hugetlb_free_pte_range(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @pmd_free_tlb(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mm_dec_nr_pmds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
