; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_keypad_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_keypad_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht16k33_keypad = type { i64, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ht16k33_keypad_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht16k33_keypad_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ht16k33_keypad*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ht16k33_keypad*
  store %struct.ht16k33_keypad* %7, %struct.ht16k33_keypad** %5, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %5, align 8
  %10 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %5, align 8
  %13 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %5, align 8
  %16 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @wait_event_timeout(i32 %11, i64 %14, i32 %18)
  %20 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %5, align 8
  %21 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  br label %30

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %5, align 8
  %28 = call i64 @ht16k33_keypad_scan(%struct.ht16k33_keypad* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %8, label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ht16k33_keypad_scan(%struct.ht16k33_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
