; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_white_space.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_white_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF8_1_BYTE_CODE_POINT_MAX = common dso_local global i64 0, align 8
@LIT_CHAR_TAB = common dso_local global i64 0, align 8
@LIT_CHAR_VTAB = common dso_local global i64 0, align 8
@LIT_CHAR_FF = common dso_local global i64 0, align 8
@LIT_CHAR_SP = common dso_local global i64 0, align 8
@LIT_CHAR_NBSP = common dso_local global i64 0, align 8
@LIT_CHAR_BOM = common dso_local global i64 0, align 8
@lit_unicode_separator_char_interval_sps = common dso_local global i64* null, align 8
@lit_unicode_separator_char_interval_lengths = common dso_local global i64* null, align 8
@lit_unicode_separator_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_char_is_white_space(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @LIT_UTF8_1_BYTE_CODE_POINT_MAX, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @LIT_CHAR_TAB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @LIT_CHAR_VTAB, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @LIT_CHAR_FF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @LIT_CHAR_SP, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %11, %7
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %7 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @LIT_CHAR_NBSP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @LIT_CHAR_BOM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64*, i64** @lit_unicode_separator_char_interval_sps, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = load i64*, i64** @lit_unicode_separator_char_interval_sps, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @lit_unicode_separator_char_interval_lengths, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp sle i64 %41, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %40, %34
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* @lit_unicode_separator_chars, align 4
  %53 = load i32, i32* @lit_unicode_separator_chars, align 4
  %54 = call i32 @NUM_OF_ELEMENTS(i32 %53)
  %55 = call i64 @search_char_in_char_array(i64 %51, i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %50, %40, %30, %26
  %58 = phi i1 [ true, %40 ], [ true, %30 ], [ true, %26 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @search_char_in_char_array(i64, i32, i32) #1

declare dso_local i32 @NUM_OF_ELEMENTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
