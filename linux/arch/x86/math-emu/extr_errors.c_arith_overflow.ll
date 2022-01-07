; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_arith_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_arith_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Valid = common dso_local global i32 0, align 4
@control_word = common dso_local global i32 0, align 4
@CW_Overflow = common dso_local global i32 0, align 4
@CONST_INF = common dso_local global i32 0, align 4
@TAG_Special = common dso_local global i32 0, align 4
@EX_Overflow = common dso_local global i32 0, align 4
@EX_Precision = common dso_local global i32 0, align 4
@SW_C1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arith_overflow(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @TAG_Valid, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @control_word, align 4
  %7 = load i32, i32* @CW_Overflow, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @reg_copy(i32* @CONST_INF, i32* %11)
  %13 = load i32, i32* @TAG_Special, align 4
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @addexponent(i32* %15, i32 -24576)
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* @EX_Overflow, align 4
  %19 = call i32 @EXCEPTION(i32 %18)
  %20 = load i32, i32* @control_word, align 4
  %21 = load i32, i32* @CW_Overflow, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @EX_Precision, align 4
  %26 = load i32, i32* @SW_C1, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @EXCEPTION(i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @reg_copy(i32*, i32*) #1

declare dso_local i32 @addexponent(i32*, i32) #1

declare dso_local i32 @EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
