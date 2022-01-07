; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvuf.c_sgl_to_sgl_fcnvuf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvuf.c_sgl_to_sgl_fcnvuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_EXP_LENGTH = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvuf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @Sgl_setzero(i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %22, i32* %5, align 4
  br label %70

23:                                               ; preds = %4
  store i32 16, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @Find_ms_one_bit(i32 %24, i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SGL_EXP_LENGTH, align 4
  %34 = lshr i32 %32, %33
  %35 = call i32 @Sgl_set_mantissa(i32 %31, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i64, i64* @SGL_BIAS, align 8
  %38 = add nsw i64 30, %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = call i32 @Sgl_set_exponent(i32 %36, i64 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @Suint_isinexact_to_sgl(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %23
  %47 = call i32 (...) @Rounding_mode()
  switch i32 %47, label %56 [
    i32 128, label %48
    i32 130, label %51
    i32 129, label %52
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @Sgl_increment(i32 %49)
  br label %56

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @Sgl_roundnearest_from_suint(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %52, %51, %48
  %57 = call i64 (...) @Is_inexacttrap_enabled()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %62, i32* %5, align 4
  br label %70

63:                                               ; preds = %56
  %64 = call i32 (...) @Set_inexactflag()
  br label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %23
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %59, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Sgl_set_mantissa(i32, i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i64) #1

declare dso_local i64 @Suint_isinexact_to_sgl(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_roundnearest_from_suint(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
