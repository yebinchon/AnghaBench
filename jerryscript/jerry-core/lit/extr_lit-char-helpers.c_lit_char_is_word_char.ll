; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_word_char.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_word_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CHAR_ASCII_LOWERCASE_LETTERS_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_LOWERCASE_LETTERS_END = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_UPPERCASE_LETTERS_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_UPPERCASE_LETTERS_END = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_DIGITS_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_DIGITS_END = common dso_local global i64 0, align 8
@LIT_CHAR_UNDERSCORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_char_is_word_char(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @LIT_CHAR_ASCII_LOWERCASE_LETTERS_BEGIN, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @LIT_CHAR_ASCII_LOWERCASE_LETTERS_END, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %6, %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @LIT_CHAR_ASCII_UPPERCASE_LETTERS_BEGIN, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @LIT_CHAR_ASCII_UPPERCASE_LETTERS_END, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @LIT_CHAR_ASCII_DIGITS_BEGIN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @LIT_CHAR_ASCII_DIGITS_END, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @LIT_CHAR_UNDERSCORE, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22, %14, %6
  %31 = phi i1 [ true, %22 ], [ true, %14 ], [ true, %6 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
