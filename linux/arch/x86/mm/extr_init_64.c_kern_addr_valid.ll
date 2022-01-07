; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_init_64.c_kern_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_init_64.c_kern_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__VIRTUAL_MASK_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_addr_valid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @__VIRTUAL_MASK_SHIFT, align 8
  %12 = ashr i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %88

19:                                               ; preds = %15, %1
  %20 = load i64, i64* %3, align 8
  %21 = call i32* @pgd_offset_k(i64 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pgd_none(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %88

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32* @p4d_offset(i32* %28, i64 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @p4d_none(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %88

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i32* @pud_offset(i32* %37, i64 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pud_none(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %88

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @pud_large(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pud_pfn(i32 %52)
  %54 = call i32 @pfn_valid(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %88

55:                                               ; preds = %45
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i32* @pmd_offset(i32* %56, i64 %57)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @pmd_none(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %88

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pmd_large(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pmd_pfn(i32 %71)
  %73 = call i32 @pfn_valid(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %88

74:                                               ; preds = %64
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* %3, align 8
  %77 = call i32* @pte_offset_kernel(i32* %75, i64 %76)
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pte_none(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pte_pfn(i32 %85)
  %87 = call i32 @pfn_valid(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %82, %69, %63, %50, %44, %35, %26, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32 @pfn_valid(i32) #1

declare dso_local i32 @pud_pfn(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @pmd_pfn(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
