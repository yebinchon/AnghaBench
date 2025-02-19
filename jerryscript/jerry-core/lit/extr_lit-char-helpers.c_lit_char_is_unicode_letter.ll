; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_unicode_letter.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-char-helpers.c_lit_char_is_unicode_letter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lit_unicode_letter_interval_sps = common dso_local global i32 0, align 4
@lit_unicode_letter_interval_lengths = common dso_local global i32 0, align 4
@lit_unicode_letter_chars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lit_char_is_unicode_letter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lit_char_is_unicode_letter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @lit_unicode_letter_interval_sps, align 4
  %5 = load i32, i32* @lit_unicode_letter_interval_lengths, align 4
  %6 = load i32, i32* @lit_unicode_letter_interval_sps, align 4
  %7 = call i32 @NUM_OF_ELEMENTS(i32 %6)
  %8 = call i64 @search_char_in_interval_array(i32 %3, i32 %4, i32 %5, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @lit_unicode_letter_chars, align 4
  %13 = load i32, i32* @lit_unicode_letter_chars, align 4
  %14 = call i32 @NUM_OF_ELEMENTS(i32 %13)
  %15 = call i64 @search_char_in_char_array(i32 %11, i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ true, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @search_char_in_interval_array(i32, i32, i32, i32) #1

declare dso_local i32 @NUM_OF_ELEMENTS(i32) #1

declare dso_local i64 @search_char_in_char_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
