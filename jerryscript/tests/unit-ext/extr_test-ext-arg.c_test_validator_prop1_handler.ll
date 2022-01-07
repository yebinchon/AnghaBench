; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_prop1_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_prop1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"prop1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"prop2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"prop3\00", align 1
@__const.test_validator_prop1_handler.name_p = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@JERRYX_ARG_OPTIONAL = common dso_local global i32 0, align 4
@validator_prop_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_prop1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_prop1_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [3 x i8*], align 16
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @JERRY_UNUSED(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @JERRY_UNUSED(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @JERRY_UNUSED(i32 %19)
  store i32 0, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  store double 3.000000e+00, double* %11, align 8
  %21 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([3 x i8*]* @__const.test_validator_prop1_handler.name_p to i8*), i64 24, i1 false)
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %23 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %24 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %25 = call i8* @jerryx_arg_boolean(i32* %9, i32 %23, i32 %24)
  store i8* %25, i8** %22, align 8
  %26 = getelementptr inbounds i8*, i8** %22, i64 1
  %27 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %28 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %29 = call i8* @jerryx_arg_number(double* %10, i32 %27, i32 %28)
  store i8* %29, i8** %26, align 8
  %30 = getelementptr inbounds i8*, i8** %26, i64 1
  %31 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %32 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %33 = call i8* @jerryx_arg_number(double* %11, i32 %31, i32 %32)
  store i8* %33, i8** %30, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %38 = bitcast i8** %37 to i32**
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i8** %39)
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(i8** %42)
  %44 = call i32 @jerryx_arg_transform_object_properties(i32 %36, i32** %38, i32 %40, i8** %41, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @jerry_value_is_error(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST_ASSERT(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TEST_ASSERT(i32 %51)
  %53 = load double, double* %10, align 8
  %54 = fcmp oeq double %53, 1.500000e+00
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load double, double* %11, align 8
  %58 = fcmp oeq double %57, 3.000000e+00
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_ASSERT(i32 %59)
  %61 = load i32, i32* @validator_prop_count, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @validator_prop_count, align 4
  %63 = call i32 (...) @jerry_create_undefined()
  ret i32 %63
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @jerryx_arg_boolean(i32*, i32, i32) #1

declare dso_local i8* @jerryx_arg_number(double*, i32, i32) #1

declare dso_local i32 @jerryx_arg_transform_object_properties(i32, i32**, i32, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
