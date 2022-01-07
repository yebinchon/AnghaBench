; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4

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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @__ffs(i64 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @PGDIR_SHIFT, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 1
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @pgd_offset(%struct.mm_struct* %23, i64 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @PGDIR_SHIFT, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %11, align 8
  br label %66

33:                                               ; preds = %3
  %34 = load i32, i32* @PUD_SHIFT, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32* @pud_alloc(%struct.mm_struct* %35, i32* %36, i64 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %105

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @PUD_SHIFT, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @pud_lockptr(%struct.mm_struct* %47, i32* %48)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %9, align 8
  store i32* %50, i32** %11, align 8
  br label %65

51:                                               ; preds = %42
  %52 = load i32, i32* @PMD_SHIFT, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32* @pmd_alloc(%struct.mm_struct* %53, i32* %54, i64 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32* null, i32** %4, align 8
  br label %105

60:                                               ; preds = %51
  %61 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @pmd_lockptr(%struct.mm_struct* %61, i32* %62)
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %11, align 8
  br label %65

65:                                               ; preds = %60, %46
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  br label %105

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @hugepd_none(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hugepd_ok(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @hugepd_none(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = call i64 @__hugepte_alloc(%struct.mm_struct* %90, i32* %91, i64 %92, i32 %93, i32 %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32* null, i32** %4, align 8
  br label %105

99:                                               ; preds = %89, %81
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32* @hugepte_offset(i32 %101, i64 %102, i32 %103)
  store i32* %104, i32** %4, align 8
  br label %105

105:                                              ; preds = %99, %98, %69, %59, %41
  %106 = load i32*, i32** %4, align 8
  ret i32* %106
}

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pud_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hugepd_none(i32) #1

declare dso_local i32 @hugepd_ok(i32) #1

declare dso_local i64 @__hugepte_alloc(%struct.mm_struct*, i32*, i64, i32, i32, i32*) #1

declare dso_local i32* @hugepte_offset(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
