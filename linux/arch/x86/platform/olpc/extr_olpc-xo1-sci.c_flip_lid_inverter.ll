; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_flip_lid_inverter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_flip_lid_inverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lid_inverted = common dso_local global i32 0, align 4
@OLPC_GPIO_LID = common dso_local global i32 0, align 4
@GPIO_INPUT_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flip_lid_inverter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_lid_inverter() #0 {
  %1 = load i32, i32* @lid_inverted, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @OLPC_GPIO_LID, align 4
  %5 = load i32, i32* @GPIO_INPUT_INVERT, align 4
  %6 = call i32 @cs5535_gpio_clear(i32 %4, i32 %5)
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @OLPC_GPIO_LID, align 4
  %9 = load i32, i32* @GPIO_INPUT_INVERT, align 4
  %10 = call i32 @cs5535_gpio_set(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = load i32, i32* @lid_inverted, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @lid_inverted, align 4
  ret void
}

declare dso_local i32 @cs5535_gpio_clear(i32, i32) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
