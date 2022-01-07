; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvuf.c_dbl_to_dbl_fcnvuf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvuf.c_dbl_to_dbl_fcnvuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@DBL_EXP_LENGTH = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvuf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @Duint_copyfromptr(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @Dbl_setzero(i32 %25, i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @Dbl_copytoptr(i32 %28, i32 %29, i32* %30)
  %32 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %32, i32* %5, align 4
  br label %115

33:                                               ; preds = %21, %4
  store i32 16, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @Find_ms_one_bit(i32 %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %40, %42
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 32
  store i32 %45, i32* %10, align 4
  br label %64

46:                                               ; preds = %33
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @Find_ms_one_bit(i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 31, %55
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @Variable_shift_double(i32 %53, i32 %54, i32 %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %52, %46
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %68 = lshr i32 %66, %67
  %69 = call i32 @Dbl_set_mantissap1(i32 %65, i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @Shiftdouble(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load i64, i64* @DBL_BIAS, align 8
  %77 = add nsw i64 62, %76
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = call i32 @Dbl_set_exponent(i32 %75, i64 %80)
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @Duint_isinexact_to_dbl(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %64
  %86 = call i32 (...) @Rounding_mode()
  switch i32 %86, label %97 [
    i32 128, label %87
    i32 130, label %91
    i32 129, label %92
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @Dbl_increment(i32 %88, i32 %89)
  br label %97

91:                                               ; preds = %85
  br label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @Dbl_roundnearest_from_duint(i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %85, %92, %91, %87
  %98 = call i64 (...) @Is_inexacttrap_enabled()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @Dbl_copytoptr(i32 %101, i32 %102, i32* %103)
  %105 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %105, i32* %5, align 4
  br label %115

106:                                              ; preds = %97
  %107 = call i32 (...) @Set_inexactflag()
  br label %108

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %64
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @Dbl_copytoptr(i32 %110, i32 %111, i32* %112)
  %114 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %100, %24
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @Duint_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_setzero(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Variable_shift_double(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_set_mantissap1(i32, i32) #1

declare dso_local i32 @Shiftdouble(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i64) #1

declare dso_local i64 @Duint_isinexact_to_dbl(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_roundnearest_from_duint(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
