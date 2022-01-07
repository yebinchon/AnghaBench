; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-context-data.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-context-data.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@manager1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"item1\00", align 1
@manager2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"item2\00", align 1
@manager3 = common dso_local global i32 0, align 4
@manager4 = common dso_local global i32 0, align 4
@test_context_data1_new_called = common dso_local global i32 0, align 4
@test_context_data2_new_called = common dso_local global i32 0, align 4
@test_context_data3_new_called = common dso_local global i32 0, align 4
@test_context_data4_new_called = common dso_local global i32 0, align 4
@test_context_data1_free_called = common dso_local global i32 0, align 4
@test_context_data2_free_called = common dso_local global i32 0, align 4
@test_context_data4_free_called = common dso_local global i32 0, align 4
@test_context_data1_finalize_called = common dso_local global i32 0, align 4
@test_context_data4_finalize_called = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @TEST_INIT()
  %3 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %4 = call i32 @jerry_init(i32 %3)
  %5 = call i32* @jerry_get_context_data(i32* @manager1)
  %6 = bitcast i32* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST_ASSERT(i32 %11)
  %13 = call i32* @jerry_get_context_data(i32* @manager2)
  %14 = bitcast i32* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_ASSERT(i32 %19)
  %21 = call i32* @jerry_get_context_data(i32* @manager3)
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  %25 = call i32* @jerry_get_context_data(i32* @manager4)
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT(i32 %27)
  %29 = load i32, i32* @test_context_data1_new_called, align 4
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* @test_context_data2_new_called, align 4
  %32 = call i32 @TEST_ASSERT(i32 %31)
  %33 = load i32, i32* @test_context_data3_new_called, align 4
  %34 = call i32 @TEST_ASSERT(i32 %33)
  %35 = load i32, i32* @test_context_data4_new_called, align 4
  %36 = call i32 @TEST_ASSERT(i32 %35)
  %37 = load i32, i32* @test_context_data1_free_called, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_ASSERT(i32 %40)
  %42 = load i32, i32* @test_context_data2_free_called, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i32, i32* @test_context_data4_free_called, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST_ASSERT(i32 %50)
  %52 = call i32 (...) @jerry_cleanup()
  %53 = load i32, i32* @test_context_data1_free_called, align 4
  %54 = call i32 @TEST_ASSERT(i32 %53)
  %55 = load i32, i32* @test_context_data2_free_called, align 4
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load i32, i32* @test_context_data4_free_called, align 4
  %58 = call i32 @TEST_ASSERT(i32 %57)
  %59 = load i32, i32* @test_context_data1_finalize_called, align 4
  %60 = call i32 @TEST_ASSERT(i32 %59)
  %61 = load i32, i32* @test_context_data4_finalize_called, align 4
  %62 = call i32 @TEST_ASSERT(i32 %61)
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @jerry_get_context_data(i32*) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
