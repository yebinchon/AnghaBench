; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-apsh4ad0a.c_apsh4ad0a_mode_pins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-apsh4ad0a.c_apsh4ad0a_mode_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_PIN0 = common dso_local global i32 0, align 4
@MODE_PIN1 = common dso_local global i32 0, align 4
@MODE_PIN2 = common dso_local global i32 0, align 4
@MODE_PIN3 = common dso_local global i32 0, align 4
@MODE_PIN4 = common dso_local global i32 0, align 4
@MODE_PIN5 = common dso_local global i32 0, align 4
@MODE_PIN6 = common dso_local global i32 0, align 4
@MODE_PIN7 = common dso_local global i32 0, align 4
@MODE_PIN8 = common dso_local global i32 0, align 4
@MODE_PIN9 = common dso_local global i32 0, align 4
@MODE_PIN10 = common dso_local global i32 0, align 4
@MODE_PIN11 = common dso_local global i32 0, align 4
@MODE_PIN12 = common dso_local global i32 0, align 4
@MODE_PIN13 = common dso_local global i32 0, align 4
@MODE_PIN14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apsh4ad0a_mode_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apsh4ad0a_mode_pins() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @MODE_PIN0, align 4
  %3 = load i32, i32* %1, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @MODE_PIN1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @MODE_PIN2, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @MODE_PIN3, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @MODE_PIN4, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @MODE_PIN5, align 4
  %21 = load i32, i32* %1, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @MODE_PIN6, align 4
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @MODE_PIN7, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @MODE_PIN8, align 4
  %30 = load i32, i32* %1, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @MODE_PIN9, align 4
  %33 = load i32, i32* %1, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @MODE_PIN10, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %1, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @MODE_PIN11, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %1, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @MODE_PIN12, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %1, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* @MODE_PIN13, align 4
  %48 = load i32, i32* %1, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @MODE_PIN14, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %1, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
