; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_setvalue.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-method-register.c_test_error_setvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test_err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_error_setvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_error_setvalue() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %6 = call i32 @jerry_init(i32 %5)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = call i32 (...) @jerry_get_global_object()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @freeze_property(i32 %8, i8* %9)
  %11 = call i32 (...) @jerry_create_object()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @jerryx_set_property_str(i32 %12, i8* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @jerry_value_is_error(i32 %16)
  %18 = call i32 @TEST_ASSERT(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @jerry_release_value(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @jerry_release_value(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @jerry_release_value(i32 %23)
  %25 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @freeze_property(i32, i8*) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerryx_set_property_str(i32, i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
