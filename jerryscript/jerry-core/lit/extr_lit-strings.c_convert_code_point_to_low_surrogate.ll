; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_convert_code_point_to_low_surrogate.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/lit/extr_lit-strings.c_convert_code_point_to_low_surrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_UTF16_CODE_UNIT_MAX = common dso_local global i32 0, align 4
@LIT_UTF16_LAST_10_BITS_MASK = common dso_local global i32 0, align 4
@LIT_UTF16_LOW_SURROGATE_MARKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_code_point_to_low_surrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_code_point_to_low_surrogate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @LIT_UTF16_CODE_UNIT_MAX, align 4
  %6 = icmp sgt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @JERRY_ASSERT(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @LIT_UTF16_LAST_10_BITS_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @LIT_UTF16_LOW_SURROGATE_MARKER, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %12, %13
  ret i32 %14
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
