; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_htab_convert_pte_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_htab_convert_pte_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_EXEC = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@_PAGE_PRIVILEGED = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@MMU_FTR_KERNEL_RO = common dso_local global i32 0, align 4
@HPTE_R_PP0 = common dso_local global i32 0, align 4
@_PAGE_RWX = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@_PAGE_CACHE_CTL = common dso_local global i64 0, align 8
@_PAGE_TOLERANT = common dso_local global i64 0, align 8
@HPTE_R_I = common dso_local global i64 0, align 8
@_PAGE_NON_IDEMPOTENT = common dso_local global i64 0, align 8
@HPTE_R_G = common dso_local global i64 0, align 8
@_PAGE_SAO = common dso_local global i64 0, align 8
@HPTE_R_W = common dso_local global i64 0, align 8
@HPTE_R_M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @htab_convert_pte_flags(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @_PAGE_EXEC, align 8
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @HPTE_R_N, align 8
  %10 = load i64, i64* %3, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @_PAGE_PRIVILEGED, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @_PAGE_WRITE, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @MMU_FTR_KERNEL_RO, align 4
  %24 = call i64 @mmu_has_feature(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @HPTE_R_PP0, align 4
  %28 = or i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %35

32:                                               ; preds = %22
  %33 = load i64, i64* %3, align 8
  %34 = or i64 %33, 3
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %17
  br label %59

37:                                               ; preds = %12
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @_PAGE_RWX, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = or i64 %43, 2
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @_PAGE_WRITE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @_PAGE_DIRTY, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50, %45
  %56 = load i64, i64* %3, align 8
  %57 = or i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i64, i64* @HPTE_R_R, align 8
  %61 = load i64, i64* %3, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @_PAGE_DIRTY, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i64, i64* @HPTE_R_C, align 8
  %69 = load i64, i64* %3, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @_PAGE_CACHE_CTL, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @_PAGE_TOLERANT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @HPTE_R_I, align 8
  %79 = load i64, i64* %3, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %3, align 8
  br label %113

81:                                               ; preds = %71
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* @_PAGE_CACHE_CTL, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* @_PAGE_NON_IDEMPOTENT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i64, i64* @HPTE_R_I, align 8
  %89 = load i64, i64* @HPTE_R_G, align 8
  %90 = or i64 %88, %89
  %91 = load i64, i64* %3, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %3, align 8
  br label %112

93:                                               ; preds = %81
  %94 = load i64, i64* %2, align 8
  %95 = load i64, i64* @_PAGE_CACHE_CTL, align 8
  %96 = and i64 %94, %95
  %97 = load i64, i64* @_PAGE_SAO, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i64, i64* @HPTE_R_W, align 8
  %101 = load i64, i64* @HPTE_R_I, align 8
  %102 = or i64 %100, %101
  %103 = load i64, i64* @HPTE_R_M, align 8
  %104 = or i64 %102, %103
  %105 = load i64, i64* %3, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %3, align 8
  br label %111

107:                                              ; preds = %93
  %108 = load i64, i64* @HPTE_R_M, align 8
  %109 = load i64, i64* %3, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %107, %99
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %77
  %114 = load i64, i64* %2, align 8
  %115 = call i64 @pte_to_hpte_pkey_bits(i64 %114)
  %116 = load i64, i64* %3, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i64 @pte_to_hpte_pkey_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
