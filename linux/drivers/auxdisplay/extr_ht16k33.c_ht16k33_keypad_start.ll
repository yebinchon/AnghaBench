; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_keypad_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_keypad_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ht16k33_keypad = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @ht16k33_keypad_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht16k33_keypad_start(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.ht16k33_keypad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.ht16k33_keypad* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.ht16k33_keypad* %5, %struct.ht16k33_keypad** %3, align 8
  %6 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %3, align 8
  %7 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = call i32 (...) @mb()
  %9 = load %struct.ht16k33_keypad*, %struct.ht16k33_keypad** %3, align 8
  %10 = getelementptr inbounds %struct.ht16k33_keypad, %struct.ht16k33_keypad* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @enable_irq(i32 %13)
  ret i32 0
}

declare dso_local %struct.ht16k33_keypad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
