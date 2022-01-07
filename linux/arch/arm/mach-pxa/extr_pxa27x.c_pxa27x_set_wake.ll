; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa27x.c_pxa27x_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa27x.c_pxa27x_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_KEYPAD = common dso_local global i32 0, align 4
@PWER_RTC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pxa27x_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pxa_irq_to_gpio(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gpio_set_wake(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %14, %2
  %22 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRQ_KEYPAD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @keypad_set_wake(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %21
  %31 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %37 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @PWER_RTC, align 4
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %30
  store i32 67108864, i32* %7, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %36, %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PWER, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @PWER, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @PWER, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* @PWER, align 4
  br label %52

52:                                               ; preds = %47, %43
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %37, %27, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pxa_irq_to_gpio(i32) #1

declare dso_local i32 @gpio_set_wake(i32, i32) #1

declare dso_local i32 @keypad_set_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
