; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_libfuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_libfuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @srand(i32 0)
  %9 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %10 = call i32 @jerry_init(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @jerry_is_valid_utf8_string(i32* %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %20 = call i32 @jerry_parse(i32* null, i32 0, i32* %17, i64 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @jerry_value_is_error(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @jerry_run(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @jerry_release_value(i32 %27)
  %29 = call i32 (...) @jerry_run_all_enqueued_jobs()
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @jerry_release_value(i32 %30)
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @jerry_release_value(i32 %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i64 @jerry_is_valid_utf8_string(i32*, i32) #1

declare dso_local i32 @jerry_parse(i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_run(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_run_all_enqueued_jobs(...) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
