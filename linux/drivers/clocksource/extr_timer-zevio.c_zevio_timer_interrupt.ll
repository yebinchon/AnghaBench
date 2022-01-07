; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-zevio.c_zevio_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-zevio.c_zevio_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zevio_timer = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@IO_INTR_ACK = common dso_local global i64 0, align 8
@TIMER_INTR_MSK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CNTL_STOP_TIMER = common dso_local global i32 0, align 4
@IO_CONTROL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zevio_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zevio_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zevio_timer*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.zevio_timer*
  store %struct.zevio_timer* %9, %struct.zevio_timer** %6, align 8
  %10 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %11 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IO_INTR_ACK, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TIMER_INTR_MSK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load i32, i32* @TIMER_INTR_MSK, align 4
  %24 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %25 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IO_INTR_ACK, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* @CNTL_STOP_TIMER, align 4
  %31 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %32 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IO_CONTROL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %38 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_2__*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %22
  %43 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %44 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %45, align 8
  %47 = load %struct.zevio_timer*, %struct.zevio_timer** %6, align 8
  %48 = getelementptr inbounds %struct.zevio_timer, %struct.zevio_timer* %47, i32 0, i32 0
  %49 = call i32 %46(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %42, %22
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
