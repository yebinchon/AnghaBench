; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_jerry_run.c_js_loop.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_jerry_run.c_js_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fn_sys_loop_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Error: '%s' not defined!!!\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error: '%s' is not a function!!!\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_loop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = call i32 (...) @jerry_get_global_object()
  store i32 %11, i32* %4, align 4
  %12 = load i8*, i8** @fn_sys_loop_name, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = call i32 @jerry_create_string(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @jerry_get_property(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @jerry_release_value(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @jerry_value_is_error(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i8*, i8** @fn_sys_loop_name, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @jerry_release_value(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @jerry_release_value(i32 %28)
  store i32 -1, i32* %2, align 4
  br label %76

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @jerry_value_is_function(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** @fn_sys_loop_name, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @jerry_release_value(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @jerry_release_value(i32 %39)
  store i32 -2, i32* %2, align 4
  br label %76

41:                                               ; preds = %30
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @jerry_create_number(i32 %43)
  store i32 %44, i32* %42, align 4
  store i64 1, i64* %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @jerry_call_function(i32 %45, i32 %46, i32* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %59, %41
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jerry_release_value(i32 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %50

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @jerry_release_value(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @jerry_release_value(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @jerry_value_is_error(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @jerry_release_value(i32 %71)
  store i32 -3, i32* %2, align 4
  br label %76

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @jerry_release_value(i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %34, %23
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @jerry_value_is_function(i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

declare dso_local i32 @jerry_call_function(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
