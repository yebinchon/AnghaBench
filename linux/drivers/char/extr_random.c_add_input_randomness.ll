; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_input_randomness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_input_randomness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_input_randomness.last_value = internal global i8 0, align 1
@input_timer_state = common dso_local global i32 0, align 4
@input_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_input_randomness(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i8, i8* @add_input_randomness.last_value, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %27

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* @add_input_randomness.last_value, align 1
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 4
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = lshr i32 %19, 4
  %21 = xor i32 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %21, %22
  %24 = call i32 @add_timer_randomness(i32* @input_timer_state, i32 %23)
  %25 = call i32 @ENTROPY_BITS(i32* @input_pool)
  %26 = call i32 @trace_add_input_randomness(i32 %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @add_timer_randomness(i32*, i32) #1

declare dso_local i32 @trace_add_input_randomness(i32) #1

declare dso_local i32 @ENTROPY_BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
