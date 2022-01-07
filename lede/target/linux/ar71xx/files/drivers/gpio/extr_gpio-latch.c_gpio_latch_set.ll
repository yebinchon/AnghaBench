; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_set.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_latch_chip = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @gpio_latch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_latch_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_latch_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.gpio_latch_chip* @to_gpio_latch_chip(%struct.gpio_chip* %11)
  store %struct.gpio_latch_chip* %12, %struct.gpio_latch_chip** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %14 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %22 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %28 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %25, %3
  %36 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @gpio_latch_lock(%struct.gpio_latch_chip* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gpio_set_value(i32 %39, i32 %40)
  %42 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @gpio_latch_unlock(%struct.gpio_latch_chip* %42, i32 %43)
  ret void
}

declare dso_local %struct.gpio_latch_chip* @to_gpio_latch_chip(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_latch_lock(%struct.gpio_latch_chip*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_latch_unlock(%struct.gpio_latch_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
