; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_fsin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_fsin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i64 0, align 8
@TAG_Zero = common dso_local global i64 0, align 8
@TAG_Special = common dso_local global i64 0, align 8
@TW_Denormal = common dso_local global i64 0, align 8
@FULL_PRECISION = common dso_local global i32 0, align 4
@TW_Infinity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @fsin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsin(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @getsign(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @TAG_Valid, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @exponent(i32* %14)
  %16 = icmp sgt i32 %15, -40
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @trig_arg(i32* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %82

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @poly_sine(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @changesign(i32* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @getsign(i32* %33)
  %35 = load i64, i64* %6, align 8
  %36 = xor i64 %34, %35
  %37 = call i32 @setsign(i32* %32, i64 %36)
  %38 = call i32 (...) @set_precision_flag_up()
  store i32 0, i32* %3, align 4
  br label %82

39:                                               ; preds = %13
  %40 = call i32 (...) @set_precision_flag_up()
  store i32 0, i32* %3, align 4
  br label %82

41:                                               ; preds = %2
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @TAG_Zero, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @setcc(i32 0)
  store i32 0, i32* %3, align 4
  br label %82

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TAG_Special, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @FPU_Special(i32* %52)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TW_Denormal, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = call i64 (...) @denormal_operand()
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %82

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @FPU_to_exp16(i32* %63, i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @FULL_PRECISION, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @FPU_round(i32* %66, i32 1, i32 0, i32 %67, i64 %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @FPU_settag0(i64 %70)
  store i32 0, i32* %3, align 4
  br label %82

72:                                               ; preds = %54
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @TW_Infinity, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @arith_invalid(i32 0)
  store i32 1, i32* %3, align 4
  br label %82

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @single_arg_error(i32* %79, i64 %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %76, %62, %61, %45, %39, %31, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @getsign(i32*) #1

declare dso_local i32 @exponent(i32*) #1

declare dso_local i32 @trig_arg(i32*, i32) #1

declare dso_local i32 @poly_sine(i32*) #1

declare dso_local i32 @changesign(i32*) #1

declare dso_local i32 @setsign(i32*, i64) #1

declare dso_local i32 @set_precision_flag_up(...) #1

declare dso_local i32 @setcc(i32) #1

declare dso_local i64 @FPU_Special(i32*) #1

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @FPU_to_exp16(i32*, i32*) #1

declare dso_local i64 @FPU_round(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @FPU_settag0(i64) #1

declare dso_local i32 @arith_invalid(i32) #1

declare dso_local i32 @single_arg_error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
