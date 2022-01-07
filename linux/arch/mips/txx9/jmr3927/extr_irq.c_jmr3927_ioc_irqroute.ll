; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/jmr3927/extr_irq.c_jmr3927_ioc_irqroute.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/jmr3927/extr_irq.c_jmr3927_ioc_irqroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JMR3927_IOC_INTS2_ADDR = common dso_local global i32 0, align 4
@JMR3927_NR_IRQ_IOC = common dso_local global i32 0, align 4
@JMR3927_IRQ_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @jmr3927_ioc_irqroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmr3927_ioc_irqroute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = load i32, i32* @JMR3927_IOC_INTS2_ADDR, align 4
  %5 = call zeroext i8 @jmr3927_ioc_reg_in(i32 %4)
  store i8 %5, i8* %2, align 1
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @JMR3927_NR_IRQ_IOC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @JMR3927_IRQ_IOC, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %1, align 4
  br label %26

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local zeroext i8 @jmr3927_ioc_reg_in(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
