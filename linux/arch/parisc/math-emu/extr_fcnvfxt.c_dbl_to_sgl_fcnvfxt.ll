; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_dbl_to_sgl_fcnvfxt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_dbl_to_sgl_fcnvfxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_sgl_fcnvfxt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @Dbl_copyfromptr(i32* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @Dbl_exponent(i32 %20)
  %22 = load i32, i32* @DBL_BIAS, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @Dbl_isoverflow_to_int(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @Dbl_iszero_sign(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 2147483647, i32* %15, align 4
  br label %39

38:                                               ; preds = %33
  store i32 -2147483648, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = call i64 (...) @Is_invalidtrap_enabled()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %43, i32* %5, align 4
  br label %110

44:                                               ; preds = %39
  %45 = call i32 (...) @Set_invalidflag()
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %48, i32* %5, align 4
  br label %110

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @Int_from_dbl_mantissa(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @Dbl_isone_sign(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @Dbl_allp1(i32 %70)
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %76

73:                                               ; preds = %65, %53
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @Dbl_allp1(i32 %74)
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %15, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @Dbl_isinexact_to_fix(i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = call i64 (...) @Is_inexacttrap_enabled()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %88, i32* %5, align 4
  br label %110

89:                                               ; preds = %84
  %90 = call i32 (...) @Set_inexactflag()
  br label %91

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %76
  br label %108

93:                                               ; preds = %50
  %94 = load i32*, i32** %8, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = call i64 (...) @Is_inexacttrap_enabled()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %103, i32* %5, align 4
  br label %110

104:                                              ; preds = %99
  %105 = call i32 (...) @Set_inexactflag()
  br label %106

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %102, %87, %44, %42
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isoverflow_to_int(i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Int_from_dbl_mantissa(i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dbl_allp1(i32) #1

declare dso_local i64 @Dbl_isinexact_to_fix(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
