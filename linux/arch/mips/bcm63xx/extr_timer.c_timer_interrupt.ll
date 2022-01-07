; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_timer.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_timer.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)* }

@timer_reg_lock = common dso_local global i32 0, align 4
@TIMER_IRQSTAT_REG = common dso_local global i32 0, align 4
@BCM63XX_TIMER_COUNT = common dso_local global i32 0, align 4
@timer_data_lock = common dso_local global i32 0, align 4
@timer_data = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32 @raw_spin_lock(i32* @timer_reg_lock)
  %8 = load i32, i32* @TIMER_IRQSTAT_REG, align 4
  %9 = call i32 @bcm_timer_readl(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TIMER_IRQSTAT_REG, align 4
  %12 = call i32 @bcm_timer_writel(i32 %10, i32 %11)
  %13 = call i32 @raw_spin_unlock(i32* @timer_reg_lock)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BCM63XX_TIMER_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TIMER_IRQSTAT_TIMER_CAUSE(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %51

25:                                               ; preds = %18
  %26 = call i32 @raw_spin_lock(i32* @timer_data_lock)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = call i32 @raw_spin_unlock(i32* @timer_data_lock)
  br label %51

36:                                               ; preds = %25
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %42(i32 %48)
  %50 = call i32 @raw_spin_unlock(i32* @timer_data_lock)
  br label %51

51:                                               ; preds = %36, %34, %24
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @bcm_timer_readl(i32) #1

declare dso_local i32 @bcm_timer_writel(i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @TIMER_IRQSTAT_TIMER_CAUSE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
