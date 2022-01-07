; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_get_utf8_length.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_get_utf8_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF8_1_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4
@LIT_UTF8_2_BYTE_CODE_POINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lit_char_get_utf8_length(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @LIT_UTF8_1_BYTE_CODE_POINT_MAX, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LIT_UTF8_2_BYTE_CODE_POINT_MAX, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i64 2, i64* %2, align 8
  br label %18

17:                                               ; preds = %10
  store i64 3, i64* %2, align 8
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
