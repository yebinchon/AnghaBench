; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_lookup_address_in_pgd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_lookup_address_in_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_LEVEL_NONE = common dso_local global i32 0, align 4
@PG_LEVEL_512G = common dso_local global i32 0, align 4
@PG_LEVEL_1G = common dso_local global i32 0, align 4
@PG_LEVEL_2M = common dso_local global i32 0, align 4
@PG_LEVEL_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lookup_address_in_pgd(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @PG_LEVEL_NONE, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @pgd_none(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %93

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32* @p4d_offset(i32* %19, i64 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @p4d_none(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %93

27:                                               ; preds = %18
  %28 = load i32, i32* @PG_LEVEL_512G, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @p4d_large(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @p4d_present(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %27
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %4, align 8
  br label %93

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32* @pud_offset(i32* %42, i64 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pud_none(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32* null, i32** %4, align 8
  br label %93

50:                                               ; preds = %41
  %51 = load i32, i32* @PG_LEVEL_1G, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pud_large(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pud_present(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %50
  %63 = load i32*, i32** %9, align 8
  store i32* %63, i32** %4, align 8
  br label %93

64:                                               ; preds = %57
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32* @pmd_offset(i32* %65, i64 %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @pmd_none(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32* null, i32** %4, align 8
  br label %93

73:                                               ; preds = %64
  %74 = load i32, i32* @PG_LEVEL_2M, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @pmd_large(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pmd_present(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80, %73
  %86 = load i32*, i32** %10, align 8
  store i32* %86, i32** %4, align 8
  br label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @PG_LEVEL_4K, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32* @pte_offset_kernel(i32* %90, i64 %91)
  store i32* %92, i32** %4, align 8
  br label %93

93:                                               ; preds = %87, %85, %72, %62, %49, %39, %26, %17
  %94 = load i32*, i32** %4, align 8
  ret i32* %94
}

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none(i32) #1

declare dso_local i64 @p4d_large(i32) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
