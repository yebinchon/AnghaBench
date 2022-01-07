; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_simple_registration.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_simple_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@method_hello = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"my_number\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"my_str\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"super_str\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"my_str_sz\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"my_bool\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"my_bool_false\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"my_non_value\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"test.my_number\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"test.my_str_sz === 'super_'\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"test.my_str === 'super_str'\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"test.my_bool\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"test.my_bool_false\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"test.my_non_value\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"test.hello(33, 42, 2);\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"test.hello();\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simple_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simple_registration() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %22 = call i32 @jerry_init(i32 %21)
  %23 = call i32 (...) @jerry_create_object()
  store i32 %23, i32* %1, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %25 = load i32, i32* @method_hello, align 4
  %26 = call i32 @JERRYX_PROPERTY_FUNCTION(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds i32, i32* %24, i64 1
  %28 = call i32 @JERRYX_PROPERTY_NUMBER(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double 4.250000e+01)
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = call i32 @JERRYX_PROPERTY_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = call i32 @JERRYX_PROPERTY_STRING_SZ(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 6)
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = call i32 @JERRYX_PROPERTY_BOOLEAN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = call i32 @JERRYX_PROPERTY_BOOLEAN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = call i32 @JERRYX_PROPERTY_UNDEFINED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = call i32 (...) @JERRYX_PROPERTY_LIST_END()
  store i32 %40, i32* %39, align 4
  %41 = load i32, i32* %1, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %43 = call i64 @jerryx_set_properties(i32 %41, i32* %42)
  %44 = bitcast %struct.TYPE_4__* %3 to i64*
  store i64 %43, i64* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 7
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @jerry_value_is_undefined(i32 %51)
  %53 = call i32 @TEST_ASSERT(i32 %52)
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %55 = bitcast %struct.TYPE_4__* %3 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call i32 @jerryx_release_property_entry(i32* %54, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @jerry_release_value(i32 %59)
  %61 = call i32 (...) @jerry_get_global_object()
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @jerryx_set_property_str(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @jerry_release_value(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @jerry_release_value(i32 %67)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @jerry_eval(i32* %70, i32 %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @jerry_value_is_number(i32 %74)
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call double @jerry_get_number_value(i32 %77)
  %79 = fcmp oeq double %78, 4.250000e+01
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST_ASSERT(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @jerry_release_value(i32 %82)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @jerry_eval(i32* %85, i32 %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @jerry_value_is_boolean(i32 %89)
  %91 = call i32 @TEST_ASSERT(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @jerry_get_boolean_value(i32 %92)
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = call i32 @TEST_ASSERT(i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @jerry_release_value(i32 %97)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i32 @jerry_eval(i32* %100, i32 %102, i32 0)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @jerry_value_is_boolean(i32 %104)
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @jerry_get_boolean_value(i32 %107)
  %109 = icmp eq i32 %108, 1
  %110 = zext i1 %109 to i32
  %111 = call i32 @TEST_ASSERT(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @jerry_release_value(i32 %112)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = call i32 @jerry_eval(i32* %115, i32 %117, i32 0)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @jerry_value_is_boolean(i32 %119)
  %121 = call i32 @TEST_ASSERT(i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @jerry_get_boolean_value(i32 %122)
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = call i32 @TEST_ASSERT(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @jerry_release_value(i32 %127)
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = call i32 @jerry_eval(i32* %130, i32 %132, i32 0)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @jerry_value_is_boolean(i32 %134)
  %136 = call i32 @TEST_ASSERT(i32 %135)
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @jerry_get_boolean_value(i32 %137)
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @TEST_ASSERT(i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @jerry_release_value(i32 %142)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %15, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = call i32 @jerry_eval(i32* %145, i32 %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @jerry_value_is_undefined(i32 %149)
  %151 = call i32 @TEST_ASSERT(i32 %150)
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @jerry_release_value(i32 %152)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = bitcast i8* %154 to i32*
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = call i32 @jerry_eval(i32* %155, i32 %157, i32 0)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = call i32 @jerry_value_is_number(i32 %159)
  %161 = call i32 @TEST_ASSERT(i32 %160)
  %162 = load i32, i32* %18, align 4
  %163 = call double @jerry_get_number_value(i32 %162)
  %164 = fptoui double %163 to i32
  %165 = icmp eq i32 %164, 3
  %166 = zext i1 %165 to i32
  %167 = call i32 @TEST_ASSERT(i32 %166)
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @jerry_release_value(i32 %168)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %19, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load i8*, i8** %19, align 8
  %173 = call i32 @strlen(i8* %172)
  %174 = call i32 @jerry_eval(i32* %171, i32 %173, i32 0)
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = call i32 @jerry_value_is_number(i32 %175)
  %177 = call i32 @TEST_ASSERT(i32 %176)
  %178 = load i32, i32* %20, align 4
  %179 = call double @jerry_get_number_value(i32 %178)
  %180 = fptoui double %179 to i32
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @TEST_ASSERT(i32 %182)
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @jerry_release_value(i32 %184)
  %186 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @JERRYX_PROPERTY_FUNCTION(i8*, i32) #1

declare dso_local i32 @JERRYX_PROPERTY_NUMBER(i8*, double) #1

declare dso_local i32 @JERRYX_PROPERTY_STRING(i8*, i8*) #1

declare dso_local i32 @JERRYX_PROPERTY_STRING_SZ(i8*, i8*, i32) #1

declare dso_local i32 @JERRYX_PROPERTY_BOOLEAN(i8*, i32) #1

declare dso_local i32 @JERRYX_PROPERTY_UNDEFINED(i8*) #1

declare dso_local i32 @JERRYX_PROPERTY_LIST_END(...) #1

declare dso_local i64 @jerryx_set_properties(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i32 @jerryx_release_property_entry(i32*, i64) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerryx_set_property_str(i32, i8*, i32) #1

declare dso_local i32 @jerry_eval(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_value_is_boolean(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
