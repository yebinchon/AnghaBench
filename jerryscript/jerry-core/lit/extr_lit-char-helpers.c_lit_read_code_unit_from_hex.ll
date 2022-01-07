; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_read_code_unit_from_hex.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_read_code_unit_from_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CHAR_NULL = common dso_local global i32 0, align 4
@LIT_CHAR_ASCII_DIGITS_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_DIGITS_END = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN = common dso_local global i64 0, align 8
@LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_read_code_unit_from_hex(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @LIT_CHAR_NULL, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @JERRY_ASSERT(i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %88, %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 4
  store i32 %26, i32* %8, align 4
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LIT_CHAR_ASCII_DIGITS_BEGIN, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LIT_CHAR_ASCII_DIGITS_END, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LIT_CHAR_ASCII_DIGITS_BEGIN, align 8
  %40 = sub nsw i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %85

44:                                               ; preds = %31, %24
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN, align 8
  %58 = sub nsw i64 %57, 10
  %59 = sub nsw i64 %56, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %84

63:                                               ; preds = %49, %44
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_END, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN, align 8
  %77 = sub nsw i64 %76, 10
  %78 = sub nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %83

82:                                               ; preds = %68, %63
  store i32 0, i32* %4, align 4
  br label %94

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %54
  br label %85

85:                                               ; preds = %84, %36
  %86 = load i64*, i64** %5, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %5, align 8
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
