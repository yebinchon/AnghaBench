; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int3_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRYX_ARG_ROUND = common dso_local global i32 0, align 4
@JERRYX_ARG_CLAMP = common dso_local global i32 0, align 4
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@validator_int_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_int3_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_int3_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @JERRY_UNUSED(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @JERRY_UNUSED(i32 %14)
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %17 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %18 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %19 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %20 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %21 = call i32 @jerryx_arg_int8(i32* %9, i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = call i32 @jerryx_arg_transform_args(i32* %22, i32 %23, i32* %24, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @jerry_value_is_error(i32 %28)
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @jerry_release_value(i32 %31)
  %33 = load i32, i32* @validator_int_count, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @validator_int_count, align 4
  %35 = call i32 (...) @jerry_create_undefined()
  ret i32 %35
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_int8(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @jerryx_arg_transform_args(i32*, i32, i32*, i32) #1

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
