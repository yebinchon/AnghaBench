; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_is_valid_utf8_string.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_is_valid_utf8_string.c"
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
@LIT_UTF8_4_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_4_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_4_BYTE_CODE_POINT_MIN = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_3_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_EXTRA_BYTE_MASK = common dso_local global i32 0, align 4
@LIT_UTF8_EXTRA_BYTE_MARKER = common dso_local global i32 0, align 4
@LIT_UTF8_BITS_IN_EXTRA_BYTES = common dso_local global i32 0, align 4
@LIT_UTF8_LAST_6_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UNICODE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF16_HIGH_SURROGATE_MIN = common dso_local global i32 0, align 4
@LIT_UTF16_HIGH_SURROGATE_MAX = common dso_local global i32 0, align 4
@LIT_UTF16_LOW_SURROGATE_MIN = common dso_local global i32 0, align 4
@LIT_UTF16_LOW_SURROGATE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lit_is_valid_utf8_string(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %134, %28, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %138

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %18, i64 %19
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @LIT_UTF8_1_BYTE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @LIT_UTF8_1_BYTE_MARKER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %13

29:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @LIT_UTF8_2_BYTE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @LIT_UTF8_2_BYTE_MARKER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  store i64 1, i64* %11, align 8
  %36 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MIN, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LIT_UTF8_LAST_5_BITS_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %9, align 4
  br label %65

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LIT_UTF8_3_BYTE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @LIT_UTF8_3_BYTE_MARKER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  store i64 2, i64* %11, align 8
  %47 = load i32, i32* @LIT_UTF8_3_BYTE_CODE_POINT_MIN, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @LIT_UTF8_LAST_4_BITS_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  br label %64

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @LIT_UTF8_4_BYTE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @LIT_UTF8_4_BYTE_MARKER, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  store i64 3, i64* %11, align 8
  %58 = load i32, i32* @LIT_UTF8_4_BYTE_CODE_POINT_MIN, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @LIT_UTF8_LAST_3_BITS_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %139

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %5, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %139

72:                                               ; preds = %65
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add nsw i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @LIT_UTF8_EXTRA_BYTE_MARKER, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %139

90:                                               ; preds = %77
  %91 = load i32, i32* @LIT_UTF8_BITS_IN_EXTRA_BYTES, align 4
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @LIT_UTF8_LAST_6_BITS_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %90
  %100 = load i64, i64* %12, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %73

102:                                              ; preds = %73
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @LIT_UNICODE_CODE_POINT_MAX, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102
  store i32 0, i32* %3, align 4
  br label %139

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @LIT_UTF16_HIGH_SURROGATE_MIN, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @LIT_UTF16_HIGH_SURROGATE_MAX, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %7, align 4
  br label %134

120:                                              ; preds = %115, %111
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @LIT_UTF16_LOW_SURROGATE_MIN, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @LIT_UTF16_LOW_SURROGATE_MAX, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %139

132:                                              ; preds = %128, %124, %120
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %6, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %6, align 8
  br label %13

138:                                              ; preds = %13
  store i32 1, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %131, %110, %89, %71, %62
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
