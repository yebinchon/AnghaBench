; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pti.c_pti_clone_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pti.c_pti_clone_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PUD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PTI_CLONE_PMD = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@X86_FEATURE_PGE = common dso_local global i32 0, align 4
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@PTI_CLONE_PTE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @pti_clone_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pti_clone_pgtable(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %186, %140, %70, %52, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %187

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %187

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = call i32* @pgd_offset_k(i64 %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pgd_none(i32 %29)
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %187

34:                                               ; preds = %25
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32* @p4d_offset(i32* %35, i64 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @p4d_none(i32 %39)
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %187

44:                                               ; preds = %34
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32* @pud_offset(i32* %45, i64 %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pud_none(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @PUD_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = call i32 @WARN_ON_ONCE(i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  %60 = load i64, i64* @PUD_SIZE, align 8
  %61 = call i64 @round_up(i64 %59, i64 %60)
  store i64 %61, i64* %7, align 8
  br label %16

62:                                               ; preds = %44
  %63 = load i32*, i32** %14, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32* @pmd_offset(i32* %63, i64 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @pmd_none(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @PMD_MASK, align 8
  %73 = xor i64 %72, -1
  %74 = and i64 %71, %73
  %75 = call i32 @WARN_ON_ONCE(i64 %74)
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  %78 = load i64, i64* @PMD_SIZE, align 8
  %79 = call i64 @round_up(i64 %77, i64 %78)
  store i64 %79, i64* %7, align 8
  br label %16

80:                                               ; preds = %62
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @pmd_large(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PTI_CLONE_PMD, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %85, %80
  %90 = load i64, i64* %7, align 8
  %91 = call i32* @pti_user_pagetable_walk_pmd(i64 %90)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @WARN_ON(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %187

99:                                               ; preds = %89
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pmd_flags(i32 %101)
  %103 = load i32, i32* @_PAGE_PRESENT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @WARN_ON(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %187

111:                                              ; preds = %99
  %112 = load i32, i32* @X86_FEATURE_PGE, align 4
  %113 = call i64 @boot_cpu_has(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @_PAGE_GLOBAL, align 4
  %119 = call i32 @pmd_set_flags(i32 %117, i32 %118)
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %111
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i64, i64* @PMD_SIZE, align 8
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %7, align 8
  br label %186

128:                                              ; preds = %85
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @PTI_CLONE_PTE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %183

132:                                              ; preds = %128
  %133 = load i32*, i32** %10, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32* @pte_offset_kernel(i32* %133, i64 %134)
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @pte_none(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %7, align 8
  br label %16

144:                                              ; preds = %132
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pte_flags(i32 %146)
  %148 = load i32, i32* @_PAGE_PRESENT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i64 @WARN_ON(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %144
  br label %187

156:                                              ; preds = %144
  %157 = load i64, i64* %7, align 8
  %158 = call i32* @pti_user_pagetable_walk_pte(i64 %157)
  store i32* %158, i32** %9, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = icmp ne i32* %159, null
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i64 @WARN_ON(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %187

166:                                              ; preds = %156
  %167 = load i32, i32* @X86_FEATURE_PGE, align 4
  %168 = call i64 @boot_cpu_has(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @_PAGE_GLOBAL, align 4
  %174 = call i32 @pte_set_flags(i32 %172, i32 %173)
  %175 = load i32*, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %170, %166
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i64, i64* @PAGE_SIZE, align 8
  %181 = load i64, i64* %7, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %7, align 8
  br label %185

183:                                              ; preds = %128
  %184 = call i32 (...) @BUG()
  br label %185

185:                                              ; preds = %183, %176
  br label %186

186:                                              ; preds = %185, %121
  br label %16

187:                                              ; preds = %33, %43, %98, %110, %155, %165, %24, %16
  ret void
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32* @pti_user_pagetable_walk_pmd(i64) #1

declare dso_local i32 @pmd_flags(i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @pmd_set_flags(i32, i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_flags(i32) #1

declare dso_local i32* @pti_user_pagetable_walk_pte(i64) #1

declare dso_local i32 @pte_set_flags(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
