; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_pgtable.c_early_map_kernel_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_pgtable.c_early_map_kernel_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PUD_TABLE_SIZE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PUD_SIZE = common dso_local global i32 0, align 4
@PMD_TABLE_SIZE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32, i64, i64)* @early_map_kernel_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @early_map_kernel_page(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32* @pgd_offset_k(i64 %23)
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pgd_none(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %7
  %30 = load i32, i32* @PUD_TABLE_SIZE, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i8* @early_alloc_pgtable(i32 %30, i32 %31, i64 %32, i64 %33)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @pgd_populate(i32* @init_mm, i32* %36, i32* %37)
  br label %39

39:                                               ; preds = %29, %7
  %40 = load i32*, i32** %16, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32* @pud_offset(i32* %40, i64 %41)
  store i32* %42, i32** %17, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PUD_SIZE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32*, i32** %17, align 8
  store i32* %47, i32** %19, align 8
  br label %92

48:                                               ; preds = %39
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pud_none(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* @PMD_TABLE_SIZE, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i8* @early_alloc_pgtable(i32 %54, i32 %55, i64 %56, i64 %57)
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %18, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @pud_populate(i32* @init_mm, i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i32*, i32** %17, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32* @pmd_offset(i32* %64, i64 %65)
  store i32* %66, i32** %18, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PMD_SIZE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32*, i32** %18, align 8
  %72 = call i32* @pmdp_ptep(i32* %71)
  store i32* %72, i32** %19, align 8
  br label %92

73:                                               ; preds = %63
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pmd_present(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i8* @early_alloc_pgtable(i32 %79, i32 %80, i64 %81, i64 %82)
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %19, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @pmd_populate_kernel(i32* @init_mm, i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load i32*, i32** %18, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32* @pte_offset_kernel(i32* %89, i64 %90)
  store i32* %91, i32** %19, align 8
  br label %92

92:                                               ; preds = %88, %70, %46
  %93 = load i64, i64* %8, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @pfn_pte(i64 %95, i32 %96)
  %98 = call i32 @set_pte_at(i32* @init_mm, i64 %93, i32* %94, i32 %97)
  %99 = call i32 (...) @smp_wmb()
  ret i32 0
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i8* @early_alloc_pgtable(i32, i32, i64, i64) #1

declare dso_local i32 @pgd_populate(i32*, i32*, i32*) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @pud_populate(i32*, i32*, i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pmdp_ptep(i32*) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32 @pmd_populate_kernel(i32*, i32*, i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @set_pte_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
