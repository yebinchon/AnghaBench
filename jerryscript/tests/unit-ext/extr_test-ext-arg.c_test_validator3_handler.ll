; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator3_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_OPTIONAL = common dso_local global i32 0, align 4
@validator3_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator3_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator3_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @JERRY_UNUSED(i32 %13)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %16 = call i32 (...) @jerryx_arg_ignore()
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %19 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %20 = call i32 @jerryx_arg_boolean(i32* %9, i32 %18, i32 %19)
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds i32, i32* %17, i64 1
  %22 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %23 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %24 = call i32 @jerryx_arg_boolean(i32* %10, i32 %22, i32 %23)
  store i32 %24, i32* %21, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = call i32 @jerryx_arg_transform_this_and_args(i32 %25, i32* %26, i32 %27, i32* %28, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @validator3_count, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @jerry_value_is_error(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @TEST_ASSERT(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @TEST_ASSERT(i32 %43)
  br label %105

45:                                               ; preds = %4
  %46 = load i32, i32* @validator3_count, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @jerry_value_is_error(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @TEST_ASSERT(i32 %60)
  br label %104

62:                                               ; preds = %45
  %63 = load i32, i32* @validator3_count, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @jerry_value_is_error(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST_ASSERT(i32 %80)
  br label %103

82:                                               ; preds = %62
  %83 = load i32, i32* @validator3_count, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @jerry_value_is_error(i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @TEST_ASSERT(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @TEST_ASSERT(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST_ASSERT(i32 %100)
  br label %102

102:                                              ; preds = %85, %82
  br label %103

103:                                              ; preds = %102, %65
  br label %104

104:                                              ; preds = %103, %48
  br label %105

105:                                              ; preds = %104, %34
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @jerry_release_value(i32 %106)
  %108 = load i32, i32* @validator3_count, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @validator3_count, align 4
  %110 = call i32 (...) @jerry_create_undefined()
  ret i32 %110
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_ignore(...) #1

declare dso_local i32 @jerryx_arg_boolean(i32*, i32, i32) #1

declare dso_local i32 @jerryx_arg_transform_this_and_args(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
