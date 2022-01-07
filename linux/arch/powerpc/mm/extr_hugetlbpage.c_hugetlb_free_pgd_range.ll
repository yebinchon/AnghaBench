; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PGDIR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_free_pgd_range(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  br label %14

14:                                               ; preds = %65, %5
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @pgd_addr_end(i64 %15, i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %19 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32* @pgd_offset(i32 %20, i64 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgd_val(i32 %24)
  %26 = call i32 @__hugepd(i32 %25)
  %27 = call i32 @is_hugepd(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %14
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @pgd_none_or_clear_bad(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %65

34:                                               ; preds = %29
  %35 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @hugetlb_free_pud_range(%struct.mmu_gather* %35, i32* %36, i64 %37, i64 %38, i64 %39, i64 %40)
  br label %64

42:                                               ; preds = %14
  %43 = load i64, i64* %7, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hugepd_shift(i32 %45)
  %47 = shl i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %53, %42
  %56 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @PGDIR_SHIFT, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @free_hugepd_range(%struct.mmu_gather* %56, i32* %57, i32 %58, i64 %59, i64 %60, i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %55, %34
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %14, label %70

70:                                               ; preds = %65
  ret void
}

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32 @is_hugepd(i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @hugetlb_free_pud_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @hugepd_shift(i32) #1

declare dso_local i32 @free_hugepd_range(%struct.mmu_gather*, i32*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
