; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_lock.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_latch_chip = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_latch_chip*, i32)* @gpio_latch_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_latch_lock(%struct.gpio_latch_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_latch_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_latch_chip* %0, %struct.gpio_latch_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %3, align 8
  %6 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
