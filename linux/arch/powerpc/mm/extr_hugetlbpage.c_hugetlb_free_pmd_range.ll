; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PMD_SHIFT = common dso_local global i32 0, align 4
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
  %16 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %60, %6
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @pmd_offset(i32* %19, i64 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @pmd_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pmd_val(i32 %26)
  %28 = call i32 @__hugepd(i32 %27)
  %29 = call i32 @is_hugepd(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %18
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @pmd_none_or_clear_bad(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  br label %60

38:                                               ; preds = %18
  %39 = load i64, i64* %9, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hugepd_shift(i32 %41)
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = add i64 %39, %44
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i64, i64* %16, align 8
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %49, %38
  %52 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* @PMD_SHIFT, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @free_hugepd_range(%struct.mmu_gather* %52, i32* %53, i32 %54, i64 %55, i64 %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %51, %31
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %18, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @PUD_MASK, align 8
  %67 = load i64, i64* %15, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %105

73:                                               ; preds = %65
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i64, i64* @PUD_MASK, align 8
  %78 = load i64, i64* %12, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %105

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %85, 1
  %87 = load i64, i64* %12, align 8
  %88 = sub i64 %87, 1
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %105

91:                                               ; preds = %84
  %92 = load i32*, i32** %8, align 8
  %93 = load i64, i64* %15, align 8
  %94 = call i32* @pmd_offset(i32* %92, i64 %93)
  store i32* %94, i32** %13, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @pud_clear(i32* %95)
  %97 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @pmd_free_tlb(%struct.mmu_gather* %97, i32* %98, i64 %99)
  %101 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %102 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mm_dec_nr_pmds(i32 %103)
  br label %105

105:                                              ; preds = %91, %90, %82, %72
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @is_hugepd(i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32 @hugepd_shift(i32) #1

declare dso_local i32 @free_hugepd_range(%struct.mmu_gather*, i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @pmd_free_tlb(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mm_dec_nr_pmds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
