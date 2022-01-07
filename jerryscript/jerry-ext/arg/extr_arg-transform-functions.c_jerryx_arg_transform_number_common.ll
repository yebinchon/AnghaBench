; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_number_common.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_number_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"It can not be converted to a number.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, double*)* @jerryx_arg_transform_number_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jerryx_arg_transform_number_common(i32* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @jerryx_arg_js_iterator_pop(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @jerry_value_to_number(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @jerry_value_is_error(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @jerry_release_value(i32 %16)
  %18 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %19 = call i32 @jerry_create_error(i32 %18, i32* bitcast ([37 x i8]* @.str to i32*))
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call double @jerry_get_number_value(i32 %21)
  %23 = load double*, double** %5, align 8
  store double %22, double* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @jerry_release_value(i32 %24)
  %26 = call i32 (...) @jerry_create_undefined()
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @jerryx_arg_js_iterator_pop(i32*) #1

declare dso_local i32 @jerry_value_to_number(i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
