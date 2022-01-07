; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_identifier_part_character.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_identifier_part_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF8_1_BYTE_CODE_POINT_MAX = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_A = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_Z = common dso_local global i64 0, align 8
@LIT_CHAR_0 = common dso_local global i64 0, align 8
@LIT_CHAR_9 = common dso_local global i64 0, align 8
@LIT_CHAR_DOLLAR_SIGN = common dso_local global i64 0, align 8
@LIT_CHAR_UNDERSCORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_char_is_identifier_part_character(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @LIT_UTF8_1_BYTE_CODE_POINT_MAX, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @LEXER_TO_ASCII_LOWERCASE(i64 %8)
  %10 = load i64, i64* @LIT_CHAR_LOWERCASE_A, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @LEXER_TO_ASCII_LOWERCASE(i64 %13)
  %15 = load i64, i64* @LIT_CHAR_LOWERCASE_Z, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %12, %7
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @LIT_CHAR_0, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @LIT_CHAR_9, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @LIT_CHAR_DOLLAR_SIGN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @LIT_CHAR_UNDERSCORE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %21, %12
  %34 = phi i1 [ true, %25 ], [ true, %21 ], [ true, %12 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @lit_char_is_unicode_letter(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @lit_char_is_unicode_non_letter_ident_part(i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ true, %36 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @LEXER_TO_ASCII_LOWERCASE(i64) #1

declare dso_local i64 @lit_char_is_unicode_letter(i64) #1

declare dso_local i64 @lit_char_is_unicode_non_letter_ident_part(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
