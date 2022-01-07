; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_get_utf8_size_of_cesu8_string.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_lit_get_utf8_size_of_cesu8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lit_get_utf8_size_of_cesu8_string(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i64 @lit_read_code_unit_from_utf8(i32* %17, i32* %8)
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @lit_is_code_point_utf16_low_surrogate(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @lit_is_code_point_utf16_high_surrogate(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %29, 2
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %28, %24, %14
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @JERRY_ASSERT(i32 %37)
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

declare dso_local i64 @lit_read_code_unit_from_utf8(i32*, i32*) #1

declare dso_local i64 @lit_is_code_point_utf16_low_surrogate(i32) #1

declare dso_local i64 @lit_is_code_point_utf16_high_surrogate(i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
