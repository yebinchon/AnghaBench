; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_single_function.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_single_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test_err\00", align 1
@method_hello = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_error_single_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_error_single_function() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %6 = call i32 @jerry_init(i32 %5)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = call i32 (...) @jerry_create_object()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @freeze_property(i32 %8, i8* %9)
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %12 = load i8*, i8** %1, align 8
  %13 = load i32, i32* @method_hello, align 4
  %14 = call i32 @JERRYX_PROPERTY_FUNCTION(i8* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = call i32 (...) @JERRYX_PROPERTY_LIST_END()
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %19 = call { i64, i32 } @jerryx_set_properties(i32 %17, i32* %18)
  %20 = bitcast %struct.TYPE_4__* %4 to { i64, i32 }*
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i32 } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i32 } %19, 1
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @jerry_value_is_error(i32 %31)
  %33 = call i32 @TEST_ASSERT(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %35 = bitcast %struct.TYPE_4__* %4 to { i64, i32 }*
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @jerryx_release_property_entry(i32* %34, i64 %37, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @jerry_release_value(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @jerry_release_value(i32 %44)
  %46 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @freeze_property(i32, i8*) #1

declare dso_local i32 @JERRYX_PROPERTY_FUNCTION(i8*, i32) #1

declare dso_local i32 @JERRYX_PROPERTY_LIST_END(...) #1

declare dso_local { i64, i32 } @jerryx_set_properties(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerryx_release_property_entry(i32*, i64, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
