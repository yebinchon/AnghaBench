; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_is_valid_cesu8_string.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_is_valid_cesu8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF8_1_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_1_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_CODE_POINT_MIN = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_5_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_3_BYTE_CODE_POINT_MIN = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_4_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_EXTRA_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_EXTRA_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_BITS_IN_EXTRA_BYTES = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_6_BITS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_is_valid_cesu8_string(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %94, %27, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %98

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %17, i64 %18
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LIT_UTF8_1_BYTE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @LIT_UTF8_1_BYTE_MARKER, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %12

28:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LIT_UTF8_2_BYTE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @LIT_UTF8_2_BYTE_MARKER, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  store i64 1, i64* %10, align 8
  %35 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MIN, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @LIT_UTF8_LAST_5_BITS_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LIT_UTF8_3_BYTE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @LIT_UTF8_3_BYTE_MARKER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  store i64 2, i64* %10, align 8
  %46 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MIN, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @LIT_UTF8_LAST_4_BITS_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %99

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %5, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %99

59:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MARKER, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %99

77:                                               ; preds = %64
  %78 = load i32, i32* @LIT_UTF8_BITS_IN_EXTRA_BYTES, align 4
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @LIT_UTF8_LAST_6_BITS_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %60

89:                                               ; preds = %60
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %99

94:                                               ; preds = %89
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %6, align 8
  br label %12

98:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %76, %58, %50
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
