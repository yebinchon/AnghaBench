; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_kern_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_kern_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_phys_bits = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_addr_valid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @__pa(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @max_phys_bits, align 8
  %16 = lshr i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %92

19:                                               ; preds = %11
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = call i32 @pfn_valid(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @KERNBASE, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = icmp ult i64 %29, ptrtoint (i32* @_end to i64)
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %92

32:                                               ; preds = %28, %24
  %33 = load i64, i64* %3, align 8
  %34 = call i32* @pgd_offset_k(i64 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pgd_none(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %92

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @pud_offset(i32* %41, i64 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pud_none(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %92

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @pud_large(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @pud_pfn(i32 %56)
  %58 = call i32 @pfn_valid(i64 %57)
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %49
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32* @pmd_offset(i32* %60, i64 %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pmd_none(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %92

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @pmd_large(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @pmd_pfn(i32 %75)
  %77 = call i32 @pfn_valid(i64 %76)
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32* @pte_offset_kernel(i32* %79, i64 %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @pte_none(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %92

87:                                               ; preds = %78
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @pte_pfn(i32 %89)
  %91 = call i32 @pfn_valid(i64 %90)
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %86, %73, %67, %54, %48, %39, %31, %19, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i64 @pud_pfn(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i64 @pmd_pfn(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
