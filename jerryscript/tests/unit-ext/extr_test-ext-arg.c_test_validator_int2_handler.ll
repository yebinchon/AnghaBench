; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int2_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int2_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRYX_ARG_ROUND = common dso_local global i32 0, align 4
@JERRYX_ARG_CLAMP = common dso_local global i32 0, align 4
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@JERRYX_ARG_FLOOR = common dso_local global i32 0, align 4
@JERRYX_ARG_CEIL = common dso_local global i32 0, align 4
@JERRYX_ARG_NO_CLAMP = common dso_local global i32 0, align 4
@validator_int_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_int2_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_int2_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [10 x i32], align 16
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @JERRY_UNUSED(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @JERRY_UNUSED(i32 %23)
  store i32 123, i32* %17, align 4
  store i32 123, i32* %18, align 4
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %26 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %27 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %28 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %29 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %30 = call i32 @jerryx_arg_int8(i32* %9, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds i32, i32* %25, i64 1
  %32 = load i32, i32* @JERRYX_ARG_FLOOR, align 4
  %33 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %34 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %35 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %36 = call i32 @jerryx_arg_int8(i32* %10, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %31, align 4
  %37 = getelementptr inbounds i32, i32* %31, i64 1
  %38 = load i32, i32* @JERRYX_ARG_CEIL, align 4
  %39 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %40 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %41 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %42 = call i32 @jerryx_arg_int8(i32* %11, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %37, align 4
  %43 = getelementptr inbounds i32, i32* %37, i64 1
  %44 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %45 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %46 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %47 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %48 = call i32 @jerryx_arg_int8(i32* %12, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %43, align 4
  %49 = getelementptr inbounds i32, i32* %43, i64 1
  %50 = load i32, i32* @JERRYX_ARG_FLOOR, align 4
  %51 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %52 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %53 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %54 = call i32 @jerryx_arg_int8(i32* %13, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %49, align 4
  %55 = getelementptr inbounds i32, i32* %49, i64 1
  %56 = load i32, i32* @JERRYX_ARG_CEIL, align 4
  %57 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %58 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %59 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %60 = call i32 @jerryx_arg_int8(i32* %14, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %55, align 4
  %61 = getelementptr inbounds i32, i32* %55, i64 1
  %62 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %63 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %64 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %65 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %66 = call i32 @jerryx_arg_int8(i32* %15, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %61, align 4
  %67 = getelementptr inbounds i32, i32* %61, i64 1
  %68 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %69 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %70 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %71 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %72 = call i32 @jerryx_arg_int8(i32* %16, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %67, align 4
  %73 = getelementptr inbounds i32, i32* %67, i64 1
  %74 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %75 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %76 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %77 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %78 = call i32 @jerryx_arg_int8(i32* %17, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %73, align 4
  %79 = getelementptr inbounds i32, i32* %73, i64 1
  %80 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %81 = load i32, i32* @JERRYX_ARG_NO_CLAMP, align 4
  %82 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %83 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %84 = call i32 @jerryx_arg_int8(i32* %18, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %79, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %89 = call i32 @ARRAY_SIZE(i32* %88)
  %90 = call i32 @jerryx_arg_transform_args(i32* %85, i32 %86, i32* %87, i32 %89)
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @jerry_value_is_error(i32 %91)
  %93 = call i32 @TEST_ASSERT(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, -2
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST_ASSERT(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, -2
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST_ASSERT(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, -1
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST_ASSERT(i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i32
  %109 = call i32 @TEST_ASSERT(i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 1
  %112 = zext i1 %111 to i32
  %113 = call i32 @TEST_ASSERT(i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i32
  %117 = call i32 @TEST_ASSERT(i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = icmp eq i32 %118, 127
  %120 = zext i1 %119 to i32
  %121 = call i32 @TEST_ASSERT(i32 %120)
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, -128
  %124 = zext i1 %123 to i32
  %125 = call i32 @TEST_ASSERT(i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %126, 127
  %128 = zext i1 %127 to i32
  %129 = call i32 @TEST_ASSERT(i32 %128)
  %130 = load i32, i32* %18, align 4
  %131 = icmp eq i32 %130, 123
  %132 = zext i1 %131 to i32
  %133 = call i32 @TEST_ASSERT(i32 %132)
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @jerry_release_value(i32 %134)
  %136 = load i32, i32* @validator_int_count, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @validator_int_count, align 4
  %138 = call i32 (...) @jerry_create_undefined()
  ret i32 %138
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
