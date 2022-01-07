; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PUD_SHIFT = common dso_local global i32 0, align 4
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

18:                                               ; preds = %67, %6
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @pud_offset(i32* %19, i64 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @pud_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pud_val(i32 %26)
  %28 = call i32 @__hugepd(i32 %27)
  %29 = call i32 @is_hugepd(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %18
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @pud_none_or_clear_bad(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %67

36:                                               ; preds = %31
  %37 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @hugetlb_free_pmd_range(%struct.mmu_gather* %37, i32* %38, i64 %39, i64 %40, i64 %41, i64 %42)
  br label %66

44:                                               ; preds = %18
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hugepd_shift(i32 %47)
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %45, %50
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* @PUD_SHIFT, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @free_hugepd_range(%struct.mmu_gather* %58, i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %57, %36
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %18, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @PGDIR_MASK, align 8
  %74 = load i64, i64* %15, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %112

80:                                               ; preds = %72
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i64, i64* @PGDIR_MASK, align 8
  %85 = load i64, i64* %12, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %112

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i64, i64* %10, align 8
  %93 = sub i64 %92, 1
  %94 = load i64, i64* %12, align 8
  %95 = sub i64 %94, 1
  %96 = icmp ugt i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %112

98:                                               ; preds = %91
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i32* @pud_offset(i32* %99, i64 %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @pgd_clear(i32* %102)
  %104 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @pud_free_tlb(%struct.mmu_gather* %104, i32* %105, i64 %106)
  %108 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %109 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mm_dec_nr_puds(i32 %110)
  br label %112

112:                                              ; preds = %98, %97, %89, %79
  ret void
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i32 @is_hugepd(i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32 @hugetlb_free_pmd_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @hugepd_shift(i32) #1

declare dso_local i32 @free_hugepd_range(%struct.mmu_gather*, i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @pgd_clear(i32*) #1

declare dso_local i32 @pud_free_tlb(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mm_dec_nr_puds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
