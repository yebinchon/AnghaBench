; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers-sort.c_ecma_builtin_helper_array_to_heap.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers-sort.c_ecma_builtin_helper_array_to_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@child_compare_value = common dso_local global i32 0, align 4
@ECMA_NUMBER_ZERO = common dso_local global i64 0, align 8
@swap_compare_value = common dso_local global i32 0, align 4
@ECMA_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32 (i32, i32, i32)*)* @ecma_builtin_helper_array_to_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_helper_array_to_heap(i32* %0, i32 %1, i32 %2, i32 %3, i32 (i32, i32, i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i32, i32, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 (i32, i32, i32)* %4, i32 (i32, i32, i32)** %10, align 8
  %17 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %129, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @ecma_is_value_empty(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %30, %26
  %39 = phi i1 [ false, %30 ], [ false, %26 ], [ %37, %34 ]
  br i1 %39, label %40, label %130

40:                                               ; preds = %38
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i32, i32* @child_compare_value, align 4
  %46 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %10, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %46(i32 %51, i32 %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ECMA_TRY_CATCH(i32 %45, i32 %59, i32 %60)
  %62 = load i32, i32* @child_compare_value, align 4
  %63 = call i32 @ecma_is_value_number(i32 %62)
  %64 = call i32 @JERRY_ASSERT(i32 %63)
  %65 = load i32, i32* @child_compare_value, align 4
  %66 = call i64 @ecma_get_number_from_value(i32 %65)
  %67 = load i64, i64* @ECMA_NUMBER_ZERO, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %44
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %44
  %73 = load i32, i32* @child_compare_value, align 4
  %74 = call i32 @ECMA_FINALIZE(i32 %73)
  br label %75

75:                                               ; preds = %72, %40
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @ecma_is_value_empty(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %129

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @JERRY_ASSERT(i32 %83)
  %85 = load i32, i32* @swap_compare_value, align 4
  %86 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %10, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 %86(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ECMA_TRY_CATCH(i32 %85, i32 %94, i32 %95)
  %97 = load i32, i32* @swap_compare_value, align 4
  %98 = call i32 @ecma_is_value_number(i32 %97)
  %99 = call i32 @JERRY_ASSERT(i32 %98)
  %100 = load i32, i32* @swap_compare_value, align 4
  %101 = call i64 @ecma_get_number_from_value(i32 %100)
  %102 = load i64, i64* @ECMA_NUMBER_ZERO, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %79
  store i32 1, i32* %14, align 4
  br label %126

105:                                              ; preds = %79
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sdiv i32 %107, 2
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sle i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @JERRY_ASSERT(i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %123, 2
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %105, %104
  %127 = load i32, i32* @swap_compare_value, align 4
  %128 = call i32 @ECMA_FINALIZE(i32 %127)
  br label %129

129:                                              ; preds = %126, %75
  br label %26

130:                                              ; preds = %38
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sle i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @JERRY_ASSERT(i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @ecma_is_value_empty(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %130
  %148 = load i32, i32* @ECMA_VALUE_UNDEFINED, align 4
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %147, %130
  %150 = load i32, i32* %11, align 4
  ret i32 %150
}

declare dso_local i64 @ecma_is_value_empty(i32) #1

declare dso_local i32 @ECMA_TRY_CATCH(i32, i32, i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_value_number(i32) #1

declare dso_local i64 @ecma_get_number_from_value(i32) #1

declare dso_local i32 @ECMA_FINALIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
