; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_array1_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_array1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@JERRYX_ARG_OPTIONAL = common dso_local global i32 0, align 4
@validator_array_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_array1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_array1_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca [1 x i32], align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @JERRY_UNUSED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @JERRY_UNUSED(i32 %18)
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %21 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %22 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %23 = call i32 @jerryx_arg_number(double* %9, i32 %21, i32 %22)
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %26 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %27 = call i32 @jerryx_arg_number(double* %10, i32 %25, i32 %26)
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds i32, i32* %24, i64 1
  %29 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %30 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %31 = call i32 @jerryx_arg_number(double* %11, i32 %29, i32 %30)
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32* %32, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 3, i32* %34, align 8
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %36 = load i32, i32* @JERRYX_ARG_OPTIONAL, align 4
  %37 = call i32 @jerryx_arg_array(%struct.TYPE_3__* %12, i32 %36)
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = call i32 @jerryx_arg_transform_args(i32* %38, i32 %39, i32* %40, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @jerry_value_is_error(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = load i64, i64* @validator_array_count, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %4
  %53 = load double, double* %9, align 8
  %54 = fcmp oeq double %53, 1.000000e+00
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load double, double* %10, align 8
  %58 = fcmp oeq double %57, 2.000000e+00
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_ASSERT(i32 %59)
  %61 = load double, double* %11, align 8
  %62 = fcmp oeq double %61, 0.000000e+00
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT(i32 %63)
  br label %65

65:                                               ; preds = %52, %4
  %66 = load i64, i64* @validator_array_count, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* @validator_array_count, align 8
  %68 = call i32 (...) @jerry_create_undefined()
  ret i32 %68
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_number(double*, i32, i32) #1

declare dso_local i32 @jerryx_arg_array(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @jerryx_arg_transform_args(i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
