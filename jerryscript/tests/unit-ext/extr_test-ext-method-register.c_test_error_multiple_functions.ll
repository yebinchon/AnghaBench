; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_multiple_functions.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_multiple_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"prop_ok\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"prop_err\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prop_not\00", align 1
@method_hello = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_error_multiple_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_error_multiple_functions() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %20 = call i32 @jerry_init(i32 %19)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %21 = call i32 (...) @jerry_create_object()
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @freeze_property(i32 %22, i8* %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = load i8*, i8** %1, align 8
  %27 = load i32, i32* @method_hello, align 4
  %28 = call i32 @JERRYX_PROPERTY_FUNCTION(i8* %26, i32 %27)
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @method_hello, align 4
  %32 = call i32 @JERRYX_PROPERTY_FUNCTION(i8* %30, i32 %31)
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds i32, i32* %29, i64 1
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @method_hello, align 4
  %36 = call i32 @JERRYX_PROPERTY_FUNCTION(i8* %34, i32 %35)
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds i32, i32* %33, i64 1
  %38 = call i32 (...) @JERRYX_PROPERTY_LIST_END()
  store i32 %38, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %41 = call i64 @jerryx_set_properties(i32 %39, i32* %40)
  %42 = bitcast %struct.TYPE_4__* %6 to i64*
  store i64 %41, i64* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_ASSERT(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @jerry_value_is_error(i32 %49)
  %51 = call i32 @TEST_ASSERT(i32 %50)
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %53 = bitcast %struct.TYPE_4__* %6 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call i32 @jerryx_release_property_entry(i32* %52, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jerry_release_value(i32 %57)
  %59 = load i8*, i8** %1, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = call i32 @jerry_create_string(i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @jerry_has_own_property(i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @jerry_get_boolean_value(i32 %65)
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @TEST_ASSERT(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @jerry_release_value(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @jerry_get_property(i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @jerry_value_is_function(i32 %75)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST_ASSERT(i32 %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %81 = call i32 @jerry_create_number(i32 22)
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds i32, i32* %80, i64 1
  %83 = call i32 @jerry_create_number(i32 -3)
  store i32 %83, i32* %82, align 4
  store i64 2, i64* %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (...) @jerry_create_undefined()
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @jerry_call_function(i32 %84, i32 %85, i32* %86, i64 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @jerry_value_is_number(i32 %89)
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @TEST_ASSERT(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @jerry_get_number_value(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_ASSERT(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @jerry_release_value(i32 %100)
  store i64 0, i64* %13, align 8
  br label %102

102:                                              ; preds = %111, %0
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @jerry_release_value(i32 %109)
  br label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %13, align 8
  br label %102

114:                                              ; preds = %102
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @jerry_release_value(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @jerry_release_value(i32 %117)
  %119 = load i8*, i8** %2, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = call i32 @jerry_create_string(i32* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @jerry_has_own_property(i32 %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @jerry_get_boolean_value(i32 %125)
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i32
  %129 = call i32 @TEST_ASSERT(i32 %128)
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @jerry_release_value(i32 %130)
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @jerry_value_is_function(i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @jerry_value_is_function(i32 %134)
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @TEST_ASSERT(i32 %137)
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @jerry_release_value(i32 %139)
  %141 = load i8*, i8** %3, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = call i32 @jerry_create_string(i32* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @jerry_has_own_property(i32 %144, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @jerry_get_boolean_value(i32 %147)
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @TEST_ASSERT(i32 %150)
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @jerry_release_value(i32 %152)
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @jerry_release_value(i32 %154)
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @jerry_release_value(i32 %156)
  %158 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @freeze_property(i32, i8*) #1

declare dso_local i32 @JERRYX_PROPERTY_FUNCTION(i8*, i32) #1

declare dso_local i32 @JERRYX_PROPERTY_LIST_END(...) #1

declare dso_local i64 @jerryx_set_properties(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerryx_release_property_entry(i32*, i64) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_has_own_property(i32, i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i32 @jerry_value_is_function(i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

declare dso_local i32 @jerry_call_function(i32, i32, i32*, i64) #1

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local i64 @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
