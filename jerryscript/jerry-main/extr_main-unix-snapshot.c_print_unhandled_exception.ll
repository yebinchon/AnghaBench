; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-snapshot.c_print_unhandled_exception.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-snapshot.c_print_unhandled_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Snapshot error: [value cannot be converted to string]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Snapshot error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_unhandled_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_unhandled_exception(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i64], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @jerry_value_is_error(i32 %7)
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @jerry_value_to_string(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @jerry_value_is_error(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %20 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @jerry_release_value(i32 %21)
  br label %52

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @jerry_get_utf8_string_size(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 256
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @jerry_release_value(i32 %31)
  br label %52

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @jerry_string_to_utf8_char_buffer(i32 %34, i64* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %47 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 0
  %48 = bitcast i64* %47 to i8*
  %49 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @jerry_release_value(i32 %50)
  br label %52

52:                                               ; preds = %33, %28, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_to_string(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*, ...) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_get_utf8_string_size(i32) #1

declare dso_local i32 @jerry_string_to_utf8_char_buffer(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
