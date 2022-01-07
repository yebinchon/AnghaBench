; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_to_utf8_bytes.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_to_utf8_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF8_1_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_5_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_EXTRA_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_6_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_4_BITS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lit_char_to_utf8_bytes(i8** %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LIT_UTF8_1_BYTE_CODE_POINT_MAX, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8**, i8*** %4, align 8
  store i8* %14, i8** %15, align 8
  store i64 1, i64* %3, align 8
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MAX, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @LIT_UTF8_2_BYTE_MARKER, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 6
  %26 = load i32, i32* @LIT_UTF8_LAST_5_BITS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %23, %27
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %4, align 8
  store i8* %30, i8** %31, align 8
  %33 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MARKER, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @LIT_UTF8_LAST_6_BITS_MASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  store i64 2, i64* %3, align 8
  br label %70

41:                                               ; preds = %16
  %42 = load i32, i32* @LIT_UTF8_3_BYTE_MARKER, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 12
  %45 = load i32, i32* @LIT_UTF8_LAST_4_BITS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %4, align 8
  store i8* %49, i8** %50, align 8
  %52 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MARKER, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 6
  %55 = load i32, i32* @LIT_UTF8_LAST_6_BITS_MASK, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %4, align 8
  store i8* %59, i8** %60, align 8
  %62 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MARKER, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @LIT_UTF8_LAST_6_BITS_MASK, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8**, i8*** %4, align 8
  store i8* %68, i8** %69, align 8
  store i64 3, i64* %3, align 8
  br label %70

70:                                               ; preds = %41, %22, %11
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
