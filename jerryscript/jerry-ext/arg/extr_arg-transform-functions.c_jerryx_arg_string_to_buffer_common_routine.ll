; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_string_to_buffer_common_routine.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_string_to_buffer_common_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Buffer size is not large enough.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @jerryx_arg_string_to_buffer_common_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jerryx_arg_string_to_buffer_common_routine(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @jerry_string_to_char_buffer(i32 %23, i8* %24, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @jerry_get_string_length(i32 %27)
  store i64 %28, i64* %11, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @jerry_string_to_utf8_char_buffer(i32 %30, i8* %31, i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @jerry_get_utf8_string_length(i32 %34)
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %48 = call i32 @jerry_create_error(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %43, %40
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  %53 = call i32 (...) @jerry_create_undefined()
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @jerry_string_to_char_buffer(i32, i8*, i64) #1

declare dso_local i64 @jerry_get_string_length(i32) #1

declare dso_local i64 @jerry_string_to_utf8_char_buffer(i32, i8*, i64) #1

declare dso_local i64 @jerry_get_utf8_string_length(i32) #1

declare dso_local i32 @jerry_create_error(i32, i8*) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
