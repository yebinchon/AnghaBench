; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-arithmetics.c_opfunc_addition.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-arithmetics.c_opfunc_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_PREFERRED_TYPE_NO = common dso_local global i32 0, align 4
@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@ECMA_VALUE_ERROR = common dso_local global i32 0, align 4
@num_left = common dso_local global i64 0, align 8
@num_right = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opfunc_addition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ecma_is_value_object(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @ecma_get_object_from_value(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @ECMA_PREFERRED_TYPE_NO, align 4
  %21 = call i32 @ecma_op_object_default_value(i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @ECMA_IS_VALUE_ERROR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @ecma_is_value_object(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i32* @ecma_get_object_from_value(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @ECMA_PREFERRED_TYPE_NO, align 4
  %37 = call i32 @ecma_op_object_default_value(i32* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ECMA_IS_VALUE_ERROR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ecma_free_value(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %3, align 4
  br label %144

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ecma_is_value_string(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @ecma_is_value_string(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %113

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %4, align 4
  %61 = call i32* @ecma_op_to_string(i32 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp eq i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i64 @JERRY_UNLIKELY(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ecma_free_value(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ecma_free_value(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %144

81:                                               ; preds = %59
  %82 = load i32, i32* %5, align 4
  %83 = call i32* @ecma_op_to_string(i32 %82)
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i64 @JERRY_UNLIKELY(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ecma_free_value(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @ecma_free_value(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @ecma_deref_ecma_string(i32* %102)
  %104 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %104, i32* %3, align 4
  br label %144

105:                                              ; preds = %81
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32* @ecma_concat_ecma_strings(i32* %106, i32* %107)
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @ecma_make_string_value(i32* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @ecma_deref_ecma_string(i32* %111)
  br label %130

113:                                              ; preds = %55
  %114 = load i64, i64* @num_left, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64 %114, i32 %115, i32 %116)
  %118 = load i64, i64* @num_right, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64 %118, i32 %119, i32 %120)
  %122 = load i64, i64* @num_left, align 8
  %123 = load i64, i64* @num_right, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @ecma_make_number_value(i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i64, i64* @num_right, align 8
  %127 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64 %126)
  %128 = load i64, i64* @num_left, align 8
  %129 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64 %128)
  br label %130

130:                                              ; preds = %113, %105
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @ecma_free_value(i32 %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @ecma_free_value(i32 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %101, %79, %47, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @ecma_is_value_object(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32 @ecma_op_object_default_value(i32*, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i64 @ecma_is_value_string(i32) #1

declare dso_local i32* @ecma_op_to_string(i32) #1

declare dso_local i64 @JERRY_UNLIKELY(i32) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i32* @ecma_concat_ecma_strings(i32*, i32*) #1

declare dso_local i32 @ecma_make_string_value(i32*) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i64, i32, i32) #1

declare dso_local i32 @ecma_make_number_value(i64) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_FINALIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
