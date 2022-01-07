; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator1_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_validator1_handler.arg3 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@JERRYX_ARG_NO_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_OPTIONAL = common dso_local global i32 0, align 4
@validator1_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator1_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @JERRY_UNUSED(i32 %15)
  store double 0.000000e+00, double* %10, align 8
  %17 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_validator1_handler.arg3, i32 0, i32 0), i64 5, i1 false)
  %18 = call i32 (...) @jerry_create_undefined()
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %20 = call i32 (...) @jerryx_arg_ignore()
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %23 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %24 = call i32 @jerryx_arg_boolean(i32* %9, i32 %22, i32 %23)
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds i32, i32* %21, i64 1
  %26 = load i32, i32* @JERRYX_ARG_NO_COERCE, align 4
  %27 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %28 = call i32 @jerryx_arg_number(double* %10, i32 %26, i32 %27)
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %31 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %32 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %33 = call i32 @jerryx_arg_string(i8* %30, i32 5, i32 %31, i32 %32)
  store i32 %33, i32* %29, align 4
  %34 = getelementptr inbounds i32, i32* %29, i64 1
  %35 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %36 = call i32 @jerryx_arg_function(i32* %12, i32 %35)
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = call i32 @jerryx_arg_transform_this_and_args(i32 %37, i32* %38, i32 %39, i32* %40, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @validator1_count, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @jerry_value_is_error(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST_ASSERT(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @TEST_ASSERT(i32 %53)
  %55 = load double, double* %10, align 8
  %56 = fcmp oeq double %55, 1.050000e+01
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_ASSERT(i32 %57)
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @TEST_ASSERT(i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @jerry_value_is_function(i32 %64)
  %66 = call i32 @TEST_ASSERT(i32 %65)
  br label %121

67:                                               ; preds = %4
  %68 = load i32, i32* @validator1_count, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @jerry_value_is_error(i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @TEST_ASSERT(i32 %77)
  %79 = load double, double* %10, align 8
  %80 = fcmp oeq double %79, 1.050000e+01
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_ASSERT(i32 %81)
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_ASSERT(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @jerry_value_is_undefined(i32 %88)
  %90 = call i32 @TEST_ASSERT(i32 %89)
  br label %120

91:                                               ; preds = %67
  %92 = load i32, i32* @validator1_count, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @jerry_value_is_error(i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @TEST_ASSERT(i32 %101)
  %103 = load double, double* %10, align 8
  %104 = fcmp oeq double %103, 1.050000e+01
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @TEST_ASSERT(i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @jerry_value_is_undefined(i32 %112)
  %114 = call i32 @TEST_ASSERT(i32 %113)
  br label %119

115:                                              ; preds = %91
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @jerry_value_is_error(i32 %116)
  %118 = call i32 @TEST_ASSERT(i32 %117)
  br label %119

119:                                              ; preds = %115, %94
  br label %120

120:                                              ; preds = %119, %70
  br label %121

121:                                              ; preds = %120, %46
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @jerry_release_value(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @jerry_release_value(i32 %124)
  %126 = load i32, i32* @validator1_count, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @validator1_count, align 4
  %128 = call i32 (...) @jerry_create_undefined()
  ret i32 %128
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerryx_arg_ignore(...) #1

declare dso_local i32 @jerryx_arg_boolean(i32*, i32, i32) #1

declare dso_local i32 @jerryx_arg_number(double*, i32, i32) #1

declare dso_local i32 @jerryx_arg_string(i8*, i32, i32, i32) #1

declare dso_local i32 @jerryx_arg_function(i32*, i32) #1

declare dso_local i32 @jerryx_arg_transform_this_and_args(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @jerry_value_is_function(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
