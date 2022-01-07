; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_array2_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_array2_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@JERRYX_ARG_NO_COERCE = common dso_local global i32 0, align 4
@validator_array_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_array2_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_array2_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @JERRY_UNUSED(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @JERRY_UNUSED(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @JERRY_UNUSED(i32 %17)
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %20 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %21 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %22 = call i32 @jerryx_arg_number(double* %9, i32 %20, i32 %21)
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load i32, i32* @JERRYX_ARG_NO_COERCE, align 4
  %25 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %26 = call i32 @jerryx_arg_boolean(i32* %10, i32 %24, i32 %25)
  store i32 %26, i32* %23, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = call i32 @jerryx_arg_transform_array(i32 %29, i32* %30, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @jerry_value_is_error(i32 %34)
  %36 = call i32 @TEST_ASSERT(i32 %35)
  %37 = load double, double* %9, align 8
  %38 = fcmp oeq double %37, 1.000000e+00
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST_ASSERT(i32 %44)
  %46 = load i32, i32* @validator_array_count, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @validator_array_count, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @jerry_release_value(i32 %48)
  %50 = call i32 (...) @jerry_create_undefined()
  ret i32 %50
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_number(double*, i32, i32) #1

declare dso_local i32 @jerryx_arg_boolean(i32*, i32, i32) #1

declare dso_local i32 @jerryx_arg_transform_array(i32, i32*, i32) #1

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
