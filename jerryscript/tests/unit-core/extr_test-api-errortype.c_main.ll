; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-errortype.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-errortype.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@JERRY_ERROR_COMMON = common dso_local global i64 0, align 8
@JERRY_ERROR_EVAL = common dso_local global i64 0, align 8
@JERRY_ERROR_RANGE = common dso_local global i64 0, align 8
@JERRY_ERROR_REFERENCE = common dso_local global i64 0, align 8
@JERRY_ERROR_SYNTAX = common dso_local global i64 0, align 8
@JERRY_ERROR_TYPE = common dso_local global i64 0, align 8
@JERRY_ERROR_URI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@JERRY_ERROR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i64], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32 (...) @TEST_INIT()
  %9 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %10 = call i32 @jerry_init(i32 %9)
  %11 = getelementptr inbounds [7 x i64], [7 x i64]* %2, i64 0, i64 0
  %12 = load i64, i64* @JERRY_ERROR_COMMON, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 1
  %14 = load i64, i64* @JERRY_ERROR_EVAL, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* @JERRY_ERROR_RANGE, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 1
  %18 = load i64, i64* @JERRY_ERROR_REFERENCE, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 1
  %20 = load i64, i64* @JERRY_ERROR_SYNTAX, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 1
  %22 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 1
  %24 = load i64, i64* @JERRY_ERROR_URI, align 8
  store i64 %24, i64* %23, align 8
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %56, %0
  %26 = load i64, i64* %3, align 8
  %27 = icmp ult i64 %26, 7
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds [7 x i64], [7 x i64]* %2, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @jerry_create_error(i64 %31, i32* bitcast ([5 x i8]* @.str to i32*))
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @jerry_value_is_error(i32 %33)
  %35 = call i32 @TEST_ASSERT(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @jerry_get_error_type(i32 %36)
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds [7 x i64], [7 x i64]* %2, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @TEST_ASSERT(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @jerry_get_value_from_error(i32 %44, i32 1)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @jerry_get_error_type(i32 %46)
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds [7 x i64], [7 x i64]* %2, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @jerry_release_value(i32 %54)
  br label %56

56:                                               ; preds = %28
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %25

59:                                               ; preds = %25
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %61 = call i32 @jerry_create_number(i32 11)
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str.1 to i32*))
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %62, i64 1
  %65 = call i32 @jerry_create_boolean(i32 1)
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = call i32 (...) @jerry_create_object()
  store i32 %67, i32* %66, align 4
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %85, %59
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %69, 4
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @jerry_get_error_type(i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @JERRY_ERROR_NONE, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST_ASSERT(i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @jerry_release_value(i32 %83)
  br label %85

85:                                               ; preds = %71
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %68

88:                                               ; preds = %68
  %89 = call i32 (...) @jerry_cleanup()
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_error(i64, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i32 @jerry_get_value_from_error(i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_create_boolean(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
