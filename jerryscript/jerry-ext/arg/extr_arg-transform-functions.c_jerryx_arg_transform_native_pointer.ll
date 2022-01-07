; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_native_pointer.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_native_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"It is not an object.\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"The object has no native pointer or type does not match.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jerryx_arg_transform_native_pointer(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @jerryx_arg_js_iterator_pop(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @jerry_value_is_object(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %17 = call i32 @jerry_create_error(i32 %16, i32* bitcast ([21 x i8]* @.str to i32*))
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8**
  store i8** %26, i8*** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @jerry_get_object_native_pointer(i32 %27, i8** %28, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %35 = call i32 @jerry_create_error(i32 %34, i32* bitcast ([57 x i8]* @.str.1 to i32*))
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %18
  %37 = call i32 (...) @jerry_create_undefined()
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @jerryx_arg_js_iterator_pop(i32*) #1

declare dso_local i32 @jerry_value_is_object(i32) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

declare dso_local i32 @jerry_get_object_native_pointer(i32, i8**, i32*) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
