; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator2_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator2_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@thing_a_info = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@my_custom_transform = common dso_local global i32 0, align 4
@validator2_count = common dso_local global i64 0, align 8
@my_thing_a = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator2_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator2_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @JERRY_UNUSED(i32 %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %15 = bitcast %struct.TYPE_3__** %9 to i8**
  %16 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %17 = call i32 @jerryx_arg_native_pointer(i8** %15, i32* @thing_a_info, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds i32, i32* %14, i64 1
  %19 = load i32, i32* @my_custom_transform, align 4
  %20 = call i32 @jerryx_arg_custom(i32* null, i32 5, i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = call i32 @jerryx_arg_transform_this_and_args(i32 %21, i32* %22, i32 %23, i32* %24, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* @validator2_count, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @jerry_value_is_error(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @TEST_ASSERT(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = icmp eq %struct.TYPE_3__* %37, @my_thing_a
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  br label %51

47:                                               ; preds = %4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @jerry_value_is_error(i32 %48)
  %50 = call i32 @TEST_ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %47, %30
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @jerry_release_value(i32 %52)
  %54 = load i64, i64* @validator2_count, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @validator2_count, align 8
  %56 = call i32 (...) @jerry_create_undefined()
  ret i32 %56
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_native_pointer(i8**, i32*, i32) #1

declare dso_local i32 @jerryx_arg_custom(i32*, i32, i32) #1

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
