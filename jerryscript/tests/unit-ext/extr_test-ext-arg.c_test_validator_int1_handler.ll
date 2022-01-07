; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int1_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_int1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRYX_ARG_ROUND = common dso_local global i32 0, align 4
@JERRYX_ARG_CLAMP = common dso_local global i32 0, align 4
@JERRYX_ARG_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@validator_int_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_int1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_int1_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [12 x i32], align 16
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @JERRY_UNUSED(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @JERRY_UNUSED(i32 %25)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %21, i64 0, i64 0
  %28 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %29 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %30 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %31 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %32 = call i32 @jerryx_arg_uint8(i64* %9, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds i32, i32* %27, i64 1
  %34 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %35 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %36 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %37 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %38 = call i32 @jerryx_arg_uint8(i64* %10, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %33, align 4
  %39 = getelementptr inbounds i32, i32* %33, i64 1
  %40 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %41 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %42 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %43 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %44 = call i32 @jerryx_arg_uint8(i64* %11, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %39, align 4
  %45 = getelementptr inbounds i32, i32* %39, i64 1
  %46 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %47 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %48 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %49 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %50 = call i32 @jerryx_arg_int8(i32* %12, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %45, align 4
  %51 = getelementptr inbounds i32, i32* %45, i64 1
  %52 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %53 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %54 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %55 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %56 = call i32 @jerryx_arg_int8(i32* %13, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %51, align 4
  %57 = getelementptr inbounds i32, i32* %51, i64 1
  %58 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %59 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %60 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %61 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %62 = call i32 @jerryx_arg_int8(i32* %14, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %57, align 4
  %63 = getelementptr inbounds i32, i32* %57, i64 1
  %64 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %65 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %66 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %67 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %68 = call i32 @jerryx_arg_uint32(i64* %15, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %63, align 4
  %69 = getelementptr inbounds i32, i32* %63, i64 1
  %70 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %71 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %72 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %73 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %74 = call i32 @jerryx_arg_uint32(i64* %16, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %69, align 4
  %75 = getelementptr inbounds i32, i32* %69, i64 1
  %76 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %77 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %78 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %79 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %80 = call i32 @jerryx_arg_uint32(i64* %17, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %75, align 4
  %81 = getelementptr inbounds i32, i32* %75, i64 1
  %82 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %83 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %84 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %85 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %86 = call i32 @jerryx_arg_int32(i32* %18, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %81, align 4
  %87 = getelementptr inbounds i32, i32* %81, i64 1
  %88 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %89 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %90 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %91 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %92 = call i32 @jerryx_arg_int32(i32* %19, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %87, align 4
  %93 = getelementptr inbounds i32, i32* %87, i64 1
  %94 = load i32, i32* @JERRYX_ARG_ROUND, align 4
  %95 = load i32, i32* @JERRYX_ARG_CLAMP, align 4
  %96 = load i32, i32* @JERRYX_ARG_COERCE, align 4
  %97 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %98 = call i32 @jerryx_arg_int32(i32* %20, i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %93, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [12 x i32], [12 x i32]* %21, i64 0, i64 0
  %102 = getelementptr inbounds [12 x i32], [12 x i32]* %21, i64 0, i64 0
  %103 = call i32 @ARRAY_SIZE(i32* %102)
  %104 = call i32 @jerryx_arg_transform_args(i32* %99, i32 %100, i32* %101, i32 %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @jerry_value_is_error(i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_ASSERT(i32 %109)
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @TEST_ASSERT(i32 %113)
  %115 = load i64, i64* %10, align 8
  %116 = icmp eq i64 %115, 255
  %117 = zext i1 %116 to i32
  %118 = call i32 @TEST_ASSERT(i32 %117)
  %119 = load i64, i64* %11, align 8
  %120 = icmp eq i64 %119, 128
  %121 = zext i1 %120 to i32
  %122 = call i32 @TEST_ASSERT(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, -128
  %125 = zext i1 %124 to i32
  %126 = call i32 @TEST_ASSERT(i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 127
  %129 = zext i1 %128 to i32
  %130 = call i32 @TEST_ASSERT(i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, -127
  %133 = zext i1 %132 to i32
  %134 = call i32 @TEST_ASSERT(i32 %133)
  %135 = load i64, i64* %15, align 8
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @TEST_ASSERT(i32 %137)
  %139 = load i64, i64* %16, align 8
  %140 = icmp eq i64 %139, 4294967295
  %141 = zext i1 %140 to i32
  %142 = call i32 @TEST_ASSERT(i32 %141)
  %143 = load i64, i64* %17, align 8
  %144 = icmp eq i64 %143, 65536
  %145 = zext i1 %144 to i32
  %146 = call i32 @TEST_ASSERT(i32 %145)
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp eq i64 %148, -2147483648
  %150 = zext i1 %149 to i32
  %151 = call i32 @TEST_ASSERT(i32 %150)
  %152 = load i32, i32* %19, align 4
  %153 = icmp eq i32 %152, 2147483647
  %154 = zext i1 %153 to i32
  %155 = call i32 @TEST_ASSERT(i32 %154)
  %156 = load i32, i32* %20, align 4
  %157 = icmp eq i32 %156, -2147483647
  %158 = zext i1 %157 to i32
  %159 = call i32 @TEST_ASSERT(i32 %158)
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @jerry_release_value(i32 %160)
  %162 = load i32, i32* @validator_int_count, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @validator_int_count, align 4
  %164 = call i32 (...) @jerry_create_undefined()
  ret i32 %164
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_uint8(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @jerryx_arg_int8(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @jerryx_arg_uint32(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @jerryx_arg_int32(i32*, i32, i32, i32, i32) #1

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
