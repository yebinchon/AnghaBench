; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-module-canonical.c_resolve.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-module-canonical.c_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jerry_char_t = common dso_local global i32 0, align 4
@name_string = common dso_local global i64* null, align 8
@ACTUAL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @jerry_get_string_size(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @jerry_char_t, align 4
  %10 = load i64*, i64** @name_string, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @JERRY_VLA(i32 %9, i64* %10, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i64*, i64** @name_string, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @jerry_string_to_char_buffer(i32 %14, i64* %15, i32 %16)
  %18 = load i64*, i64** @name_string, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** @name_string, align 8
  %23 = bitcast i64* %22 to i8*
  %24 = load i32, i32* @ACTUAL_NAME, align 4
  %25 = call i32 @strcmp(i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = call i32 (...) @jerry_create_object()
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @jerry_get_string_size(i32) #1

declare dso_local i32 @JERRY_VLA(i32, i64*, i32) #1

declare dso_local i32 @jerry_string_to_char_buffer(i32, i64*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @jerry_create_object(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
