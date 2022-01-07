; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_prop3_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_prop3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"prop1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"prop2\00", align 1
@__const.test_validator_prop3_handler.name_p = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@validator_prop_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_prop3_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_prop3_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @JERRY_UNUSED(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @JERRY_UNUSED(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @JERRY_UNUSED(i32 %18)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %20 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.test_validator_prop3_handler.name_p to i8*), i64 16, i1 false)
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %22 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %23 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %24 = call i8* @jerryx_arg_boolean(i32* %9, i32 %22, i32 %23)
  store i8* %24, i8** %21, align 8
  %25 = getelementptr inbounds i8*, i8** %21, i64 1
  %26 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %27 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %28 = call i8* @jerryx_arg_boolean(i32* %10, i32 %26, i32 %27)
  store i8* %28, i8** %25, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %33 = bitcast i8** %32 to i32**
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i8** %34)
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i8** %37)
  %39 = call i32 @jerryx_arg_transform_object_properties(i32 %31, i32** %33, i32 %35, i8** %36, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @jerry_value_is_error(i32 %40)
  %42 = call i32 @TEST_ASSERT(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_ASSERT(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = load i32, i32* @validator_prop_count, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @validator_prop_count, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @jerry_release_value(i32 %52)
  %54 = call i32 (...) @jerry_create_undefined()
  ret i32 %54
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @jerryx_arg_boolean(i32*, i32, i32) #1

declare dso_local i32 @jerryx_arg_transform_object_properties(i32, i32**, i32, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
