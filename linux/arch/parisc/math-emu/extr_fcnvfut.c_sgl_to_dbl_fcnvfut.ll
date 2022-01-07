; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfut.c_sgl_to_dbl_fcnvfut.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfut.c_sgl_to_dbl_fcnvfut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_dbl_fcnvfut(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @Sgl_exponent(i32 %16)
  %18 = load i32, i32* @SGL_BIAS, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %22 = add nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @Sgl_isone_sign(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %30

29:                                               ; preds = %24
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = call i64 (...) @Is_invalidtrap_enabled()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %34, i32* %5, align 4
  br label %108

35:                                               ; preds = %30
  %36 = call i32 (...) @Set_invalidflag()
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @Duint_copytoptr(i32 %37, i32 %38, i32* %39)
  %41 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %41, i32* %5, align 4
  br label %108

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @Sgl_isone_sign(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %50 = call i64 (...) @Is_invalidtrap_enabled()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %53, i32* %5, align 4
  br label %108

54:                                               ; preds = %49
  %55 = call i32 (...) @Set_invalidflag()
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @Duint_copytoptr(i32 %56, i32 %57, i32* %58)
  %60 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %60, i32* %5, align 4
  br label %108

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @Duint_from_sgl_mantissa(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @Duint_copytoptr(i32 %69, i32 %70, i32* %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @Sgl_isinexact_to_unsigned(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = call i64 (...) @Is_inexacttrap_enabled()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %81, i32* %5, align 4
  br label %108

82:                                               ; preds = %77
  %83 = call i32 (...) @Set_inexactflag()
  br label %84

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %61
  br label %106

86:                                               ; preds = %42
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @Duint_setzero(i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @Duint_copytoptr(i32 %90, i32 %91, i32* %92)
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = call i64 (...) @Is_inexacttrap_enabled()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %101, i32* %5, align 4
  br label %108

102:                                              ; preds = %97
  %103 = call i32 (...) @Set_inexactflag()
  br label %104

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %100, %80, %54, %52, %35, %33
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Duint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Duint_from_sgl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_unsigned(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Duint_setzero(i32, i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
