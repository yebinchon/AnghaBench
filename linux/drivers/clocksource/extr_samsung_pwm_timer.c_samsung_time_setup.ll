; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_samsung_pwm_timer.c_samsung_time_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_samsung_pwm_timer.c_samsung_time_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@samsung_pwm_lock = common dso_local global i32 0, align 4
@pwm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REG_TCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @samsung_time_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_time_setup(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @samsung_pwm_lock, i64 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pwm, i32 0, i32 0), align 8
  %18 = load i64, i64* @REG_TCON, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @readl_relaxed(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @TCON_START(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @TCON_AUTORELOAD(i32 %23)
  %25 = or i64 %22, %24
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @TCON_MANUALUPDATE(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pwm, i32 0, i32 0), align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @REG_TCNTB(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel_relaxed(i64 %33, i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pwm, i32 0, i32 0), align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @REG_TCMPB(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel_relaxed(i64 %39, i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pwm, i32 0, i32 0), align 8
  %47 = load i64, i64* @REG_TCON, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i64 %45, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @samsung_pwm_lock, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @TCON_START(i32) #1

declare dso_local i64 @TCON_AUTORELOAD(i32) #1

declare dso_local i64 @TCON_MANUALUPDATE(i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i64 @REG_TCNTB(i32) #1

declare dso_local i64 @REG_TCMPB(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
