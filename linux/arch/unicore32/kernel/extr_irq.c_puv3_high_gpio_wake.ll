; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_high_gpio_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_high_gpio_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@PM_PWER = common dso_local global i32 0, align 4
@PM_PWER_GPIOHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @puv3_high_gpio_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_high_gpio_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @PM_PWER, align 4
  %9 = call i32 @readl(i32 %8)
  %10 = load i32, i32* @PM_PWER_GPIOHIGH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PM_PWER, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @PM_PWER, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @PM_PWER_GPIOHIGH, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @PM_PWER, align 4
  %21 = call i32 @writel(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %7
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
