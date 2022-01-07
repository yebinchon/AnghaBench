; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api.c_foreach.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api.c_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"user_data\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bravo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"charlie\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %13 = bitcast i8* %12 to i32*
  %14 = call i64 @jerry_string_to_char_buffer(i32 %11, i32* %13, i32 128)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_ASSERT(i32 %21)
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT(i32 %25)
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @jerry_value_is_number(i32 %32)
  %34 = call i32 @TEST_ASSERT(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call double @jerry_get_number_value(i32 %35)
  %37 = fcmp oeq double %36, 3.200000e+01
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_ASSERT(i32 %38)
  store i32 1, i32* %4, align 4
  br label %105

40:                                               ; preds = %3
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jerry_value_is_boolean(i32 %46)
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @jerry_get_boolean_value(i32 %49)
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT(i32 %52)
  store i32 1, i32* %4, align 4
  br label %105

54:                                               ; preds = %40
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @jerry_value_is_object(i32 %60)
  %62 = call i32 @TEST_ASSERT(i32 %61)
  store i32 1, i32* %4, align 4
  br label %105

63:                                               ; preds = %54
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @jerry_value_is_number(i32 %69)
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call double @jerry_get_number_value(i32 %72)
  %74 = fcmp oeq double %73, 1.234500e+02
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  store i32 1, i32* %4, align 4
  br label %105

77:                                               ; preds = %63
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @jerry_value_is_string(i32 %83)
  %85 = call i32 @TEST_ASSERT(i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %88 = bitcast i8* %87 to i32*
  %89 = call i64 @jerry_string_to_char_buffer(i32 %86, i32* %88, i32 128)
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @TEST_ASSERT(i32 %97)
  store i32 1, i32* %4, align 4
  br label %105

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = call i32 @TEST_ASSERT(i32 0)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %82, %68, %59, %45, %31
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @jerry_string_to_char_buffer(i32, i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_value_is_boolean(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_value_is_object(i32) #1

declare dso_local i32 @jerry_value_is_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
