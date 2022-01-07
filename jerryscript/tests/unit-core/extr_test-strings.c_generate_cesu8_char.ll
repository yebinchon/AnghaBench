; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-strings.c_generate_cesu8_char.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-strings.c_generate_cesu8_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CESU8_MAX_BYTES_IN_CODE_UNIT = common dso_local global i32 0, align 4
@LIT_UTF8_1_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_CODE_POINT_MIN = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_CODE_POINT_MIN = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF16_HIGH_SURROGATE_MIN = common dso_local global i32 0, align 4
@LIT_UTF16_LOW_SURROGATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @generate_cesu8_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cesu8_char(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LIT_CESU8_MAX_BYTES_IN_CODE_UNIT, align 4
  %11 = icmp sle i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST_ASSERT(i32 %14)
  %16 = call i32 (...) @rand()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @LIT_UTF8_1_BYTE_CODE_POINT_MAX, align 4
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MIN, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MAX, align 4
  %30 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MIN, align 4
  %31 = sub nsw i32 %29, %30
  %32 = srem i32 %28, %31
  %33 = add nsw i32 %27, %32
  store i32 %33, i32* %5, align 4
  br label %50

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MIN, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MAX, align 4
  %41 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MIN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = srem i32 %39, %42
  %44 = add nsw i32 %38, %43
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MAX, align 4
  %47 = load i32, i32* %5, align 4
  %48 = srem i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @LIT_UTF16_HIGH_SURROGATE_MIN, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @LIT_UTF16_LOW_SURROGATE_MAX, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @LIT_UTF16_HIGH_SURROGATE_MIN, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %55, %51
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lit_code_unit_to_utf8(i32 %63, i32* %64)
  ret i32 %65
}

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @lit_code_unit_to_utf8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
