; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_sgl_to_dbl_fcnvfxt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_sgl_to_dbl_fcnvfxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_dbl_fcnvfxt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @Sgl_exponent(i32 %17)
  %19 = load i32, i32* @SGL_BIAS, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %27 = add nsw i32 %26, 1
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @Sgl_isnotzero_mantissa(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @Sgl_iszero_sign(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33, %29, %24
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @Sgl_iszero_sign(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 2147483647, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  br label %43

42:                                               ; preds = %37
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = call i64 (...) @Is_invalidtrap_enabled()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %47, i32* %5, align 4
  br label %123

48:                                               ; preds = %43
  %49 = call i32 (...) @Set_invalidflag()
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @Dint_copytoptr(i32 %50, i32 %51, i32* %52)
  %54 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %54, i32* %5, align 4
  br label %123

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @Dint_set_minint(i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @Dint_copytoptr(i32 %59, i32 %60, i32* %61)
  %63 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %63, i32* %5, align 4
  br label %123

64:                                               ; preds = %4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @Dint_from_sgl_mantissa(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @Sgl_isone_sign(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @Dint_setone_sign(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %67
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @Dint_copytoptr(i32 %84, i32 %85, i32* %86)
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @Sgl_isinexact_to_fix(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = call i64 (...) @Is_inexacttrap_enabled()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %96, i32* %5, align 4
  br label %123

97:                                               ; preds = %92
  %98 = call i32 (...) @Set_inexactflag()
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %83
  br label %121

101:                                              ; preds = %64
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @Dint_setzero(i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @Dint_copytoptr(i32 %105, i32 %106, i32* %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = call i64 (...) @Is_inexacttrap_enabled()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %116, i32* %5, align 4
  br label %123

117:                                              ; preds = %112
  %118 = call i32 (...) @Set_inexactflag()
  br label %119

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %100
  %122 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %115, %95, %55, %48, %46
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dint_set_minint(i32, i32) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dint_from_sgl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Dint_setone_sign(i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_fix(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Dint_setzero(i32, i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
