; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_sgl_to_sgl_fcnvfxt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfxt.c_sgl_to_sgl_fcnvfxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvfxt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @Sgl_exponent(i32 %16)
  %18 = load i32, i32* @SGL_BIAS, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @Sgl_isnotzero_mantissa(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @Sgl_iszero_sign(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32, %28, %23
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @Sgl_iszero_sign(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 2147483647, i32* %13, align 4
  br label %42

41:                                               ; preds = %36
  store i32 -2147483648, i32* %13, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = call i64 (...) @Is_invalidtrap_enabled()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %46, i32* %5, align 4
  br label %105

47:                                               ; preds = %42
  %48 = call i32 (...) @Set_invalidflag()
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %51, i32* %5, align 4
  br label %105

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @Int_from_sgl_mantissa(i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @Sgl_isone_sign(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @Sgl_all(i32 %67)
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %73

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @Sgl_all(i32 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @Sgl_isinexact_to_fix(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = call i64 (...) @Is_inexacttrap_enabled()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %84, i32* %5, align 4
  br label %105

85:                                               ; preds = %80
  %86 = call i32 (...) @Set_inexactflag()
  br label %87

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %73
  br label %103

89:                                               ; preds = %53
  %90 = load i32*, i32** %8, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = call i64 (...) @Is_inexacttrap_enabled()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %98, i32* %5, align 4
  br label %105

99:                                               ; preds = %94
  %100 = call i32 (...) @Set_inexactflag()
  br label %101

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %97, %83, %47, %45
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Int_from_sgl_mantissa(i32, i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_all(i32) #1

declare dso_local i64 @Sgl_isinexact_to_fix(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
