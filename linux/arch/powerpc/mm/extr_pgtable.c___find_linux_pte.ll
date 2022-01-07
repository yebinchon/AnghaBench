; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c___find_linux_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c___find_linux_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__find_linux_pte(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %17, align 8
  %19 = load i32, i32* @PGDIR_SHIFT, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @pgd_index(i64 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READ_ONCE(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @pgd_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32* null, i32** %5, align 8
  br label %142

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @pgd_is_leaf(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %16, align 8
  br label %134

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @pgd_val(i32 %49)
  %51 = call i32 @__hugepd(i32 %50)
  %52 = call i64 @is_hugepd(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32* %10, i32** %17, align 8
  br label %121

55:                                               ; preds = %48
  %56 = load i32, i32* @PUD_SHIFT, align 4
  store i32 %56, i32* %18, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32* @pud_offset(i32* %10, i64 %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @READ_ONCE(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @pud_none(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32* null, i32** %5, align 8
  br label %142

66:                                               ; preds = %55
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @pud_is_leaf(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** %13, align 8
  store i32* %71, i32** %16, align 8
  br label %134

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @pud_val(i32 %73)
  %75 = call i32 @__hugepd(i32 %74)
  %76 = call i64 @is_hugepd(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32* %12, i32** %17, align 8
  br label %121

79:                                               ; preds = %72
  %80 = load i32, i32* @PMD_SHIFT, align 4
  store i32 %80, i32* %18, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32* @pmd_offset(i32* %12, i64 %81)
  store i32* %82, i32** %15, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @READ_ONCE(i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @pmd_none(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32* null, i32** %5, align 8
  br label %142

90:                                               ; preds = %79
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @pmd_trans_huge(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @pmd_devmap(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %90
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32*, i32** %8, align 8
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32*, i32** %15, align 8
  store i32* %104, i32** %16, align 8
  br label %134

105:                                              ; preds = %94
  %106 = load i32, i32* %14, align 4
  %107 = call i64 @pmd_is_leaf(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32*, i32** %15, align 8
  store i32* %110, i32** %16, align 8
  br label %134

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @pmd_val(i32 %112)
  %114 = call i32 @__hugepd(i32 %113)
  %115 = call i64 @is_hugepd(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32* %14, i32** %17, align 8
  br label %121

118:                                              ; preds = %111
  %119 = load i64, i64* %7, align 8
  %120 = call i32* @pte_offset_kernel(i32* %14, i64 %119)
  store i32* %120, i32** %5, align 8
  br label %142

121:                                              ; preds = %117, %78, %54
  %122 = load i32*, i32** %17, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32* null, i32** %5, align 8
  br label %142

125:                                              ; preds = %121
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32* @hugepte_offset(i32 %127, i64 %128, i32 %129)
  store i32* %130, i32** %16, align 8
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @hugepd_shift(i32 %132)
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %125, %109, %103, %70, %46
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %18, align 4
  %139 = load i32*, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32*, i32** %16, align 8
  store i32* %141, i32** %5, align 8
  br label %142

142:                                              ; preds = %140, %124, %118, %89, %65, %41
  %143 = load i32*, i32** %5, align 8
  ret i32* %143
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @pgd_is_leaf(i32) #1

declare dso_local i64 @is_hugepd(i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_is_leaf(i32) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i64 @pmd_is_leaf(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32* @hugepte_offset(i32, i64, i32) #1

declare dso_local i32 @hugepd_shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
