; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_string_find_index.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_string_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@original_str_utf8_p = common dso_local global i32* null, align 8
@original_str_size = common dso_local global i32 0, align 4
@search_str_utf8_p = common dso_local global i32* null, align 8
@search_str_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_helper_string_find_index(i32* %0, i32* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ecma_string_get_length(i32* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @ecma_string_get_length(i32* %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %149

30:                                               ; preds = %5
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 0, %36 ], [ %38, %37 ]
  %41 = load i64*, i64** %10, align 8
  store i64 %40, i64* %41, align 8
  br label %148

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** @original_str_utf8_p, align 8
  %45 = load i32, i32* @original_str_size, align 4
  %46 = call i32 @ECMA_STRING_TO_UTF8_STRING(i32* %43, i32* %44, i32 %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i32*, i32** @original_str_utf8_p, align 8
  store i32* %48, i32** %15, align 8
  store i64 0, i64* %16, align 8
  br label %49

49:                                               ; preds = %55, %42
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i32 @lit_utf8_incr(i32** %15)
  br label %55

55:                                               ; preds = %53
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %16, align 8
  br label %49

58:                                               ; preds = %49
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** @search_str_utf8_p, align 8
  %61 = load i32, i32* @search_str_size, align 4
  %62 = call i32 @ECMA_STRING_TO_UTF8_STRING(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** @search_str_utf8_p, align 8
  store i32* %63, i32** %17, align 8
  store i32 1, i32* %18, align 4
  %64 = call i64 @lit_utf8_read_next(i32** %17)
  store i64 %64, i64* %19, align 8
  br label %65

65:                                               ; preds = %140, %58
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %65
  store i64 0, i64* %20, align 8
  %69 = load i32*, i32** %15, align 8
  store i32* %69, i32** %21, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %20, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* %12, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = call i64 @lit_utf8_read_next(i32** %15)
  %81 = load i64, i64* %19, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load i32*, i32** %17, align 8
  store i32* %84, i32** %22, align 8
  %85 = load i64, i64* %20, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %87

87:                                               ; preds = %103, %83
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %20, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* %12, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call i64 @lit_utf8_read_next(i32** %15)
  %99 = call i64 @lit_utf8_read_next(i32** %22)
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %91, %87
  %102 = phi i1 [ false, %91 ], [ false, %87 ], [ %100, %97 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i64, i64* %20, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %20, align 8
  br label %87

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %79, %73, %68
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  store i32 1, i32* %11, align 4
  %112 = load i64, i64* %14, align 8
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  br label %141

114:                                              ; preds = %107
  %115 = load i32*, i32** %21, align 8
  store i32* %115, i32** %15, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = sub nsw i64 %120, %121
  %123 = icmp sle i64 %119, %122
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %18, align 4
  br i1 %123, label %125, label %129

125:                                              ; preds = %118
  %126 = call i32 @lit_utf8_incr(i32** %15)
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %14, align 8
  br label %129

129:                                              ; preds = %125, %118
  br label %139

130:                                              ; preds = %114
  %131 = load i64, i64* %14, align 8
  %132 = icmp sgt i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %18, align 4
  br i1 %132, label %134, label %138

134:                                              ; preds = %130
  %135 = call i32 @lit_utf8_decr(i32** %15)
  %136 = load i64, i64* %14, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %14, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %129
  br label %140

140:                                              ; preds = %139
  br label %65

141:                                              ; preds = %111, %65
  %142 = load i32*, i32** @search_str_utf8_p, align 8
  %143 = load i32, i32* @search_str_size, align 4
  %144 = call i32 @ECMA_FINALIZE_UTF8_STRING(i32* %142, i32 %143)
  %145 = load i32*, i32** @original_str_utf8_p, align 8
  %146 = load i32, i32* @original_str_size, align 4
  %147 = call i32 @ECMA_FINALIZE_UTF8_STRING(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %39
  br label %149

149:                                              ; preds = %148, %5
  %150 = load i32, i32* %11, align 4
  ret i32 %150
}

declare dso_local i64 @ecma_string_get_length(i32*) #1

declare dso_local i32 @ECMA_STRING_TO_UTF8_STRING(i32*, i32*, i32) #1

declare dso_local i32 @lit_utf8_incr(i32**) #1

declare dso_local i64 @lit_utf8_read_next(i32**) #1

declare dso_local i32 @lit_utf8_decr(i32**) #1

declare dso_local i32 @ECMA_FINALIZE_UTF8_STRING(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
