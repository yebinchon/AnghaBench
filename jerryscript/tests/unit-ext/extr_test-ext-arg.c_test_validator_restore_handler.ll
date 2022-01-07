; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_restore_handler.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-arg.c_test_validator_restore_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, double }

@JERRYX_ARG_NO_COERCE = common dso_local global i32 0, align 4
@JERRYX_ARG_REQUIRED = common dso_local global i32 0, align 4
@BOOL_VALUE = common dso_local global i64 0, align 8
@DOUBLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @test_validator_restore_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_validator_restore_handler(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @JERRY_UNUSED(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @JERRY_UNUSED(i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %22 = load i32, i32* @JERRYX_ARG_NO_COERCE, align 4
  %23 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %24 = call i32 @jerryx_arg_double_or_bool_t(%struct.TYPE_5__* %9, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds i32, i32* %21, i64 1
  %26 = load i32, i32* @JERRYX_ARG_NO_COERCE, align 4
  %27 = load i32, i32* @JERRYX_ARG_REQUIRED, align 4
  %28 = call i32 @jerryx_arg_double_or_bool_t(%struct.TYPE_5__* %10, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %25, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = call i32 @jerryx_arg_transform_args(i32* %29, i32 %30, i32* %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @jerry_value_is_error(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BOOL_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %45, %4
  %51 = phi i1 [ false, %4 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DOUBLE_VALUE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = fcmp oeq double %60, 3.000000e+00
  br label %62

62:                                               ; preds = %57, %50
  %63 = phi i1 [ false, %50 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BOOL_VALUE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %69, %62
  %75 = phi i1 [ false, %62 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DOUBLE_VALUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = fcmp oeq double %84, 3.000000e+00
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i1 [ false, %74 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ false, %94 ], [ %99, %97 ]
  br label %102

102:                                              ; preds = %100, %91
  %103 = phi i1 [ true, %91 ], [ %101, %100 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST_ASSERT(i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @jerry_release_value(i32 %106)
  %108 = call i32 (...) @jerry_create_undefined()
  ret i32 %108
}

declare dso_local i32 @JERRY_UNUSED(i32) #1

declare dso_local i32 @jerryx_arg_double_or_bool_t(%struct.TYPE_5__*, i32, i32, i32) #1

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
