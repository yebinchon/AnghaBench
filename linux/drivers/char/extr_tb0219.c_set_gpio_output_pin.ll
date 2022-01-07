; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_tb0219.c_set_gpio_output_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_tb0219.c_set_gpio_output_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@tb0219_lock = common dso_local global i32 0, align 4
@TB0219_GPIO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @set_gpio_output_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gpio_output_pin(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 48
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8, i8* %5, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 49
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %11, %2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @tb0219_lock, i64 %19)
  %21 = load i32, i32* @TB0219_GPIO_OUTPUT, align 4
  %22 = call i32 @tb0219_read(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* @TB0219_GPIO_OUTPUT, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @tb0219_write(i32 %38, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @tb0219_lock, i64 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tb0219_read(i32) #1

declare dso_local i32 @tb0219_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
