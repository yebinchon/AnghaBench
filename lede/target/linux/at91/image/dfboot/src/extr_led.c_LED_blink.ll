; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_led.c_LED_blink.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_led.c_LED_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LED_blink(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store volatile i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load volatile i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 1, %9
  %11 = and i32 %10, 7
  %12 = call i32 @LED_set(i32 %11)
  store volatile i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %17, %8
  %14 = load volatile i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 200000
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load volatile i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store volatile i32 %19, i32* %4, align 4
  br label %13

20:                                               ; preds = %13
  %21 = call i32 @LED_set(i32 0)
  store volatile i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %26, %20
  %23 = load volatile i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 200000
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = load volatile i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store volatile i32 %28, i32* %4, align 4
  br label %22

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load volatile i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store volatile i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local i32 @LED_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
