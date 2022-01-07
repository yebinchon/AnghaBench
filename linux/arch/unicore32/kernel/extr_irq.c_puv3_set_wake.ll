; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@IRQ_RTCAlarm = common dso_local global i64 0, align 8
@PM_PWER = common dso_local global i32 0, align 4
@PM_PWER_RTC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @puv3_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IRQ_RTCAlarm, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* @PM_PWER, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @PM_PWER_RTC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PM_PWER, align 4
  %20 = call i32 @writel(i32 %18, i32 %19)
  br label %29

21:                                               ; preds = %11
  %22 = load i32, i32* @PM_PWER, align 4
  %23 = call i32 @readl(i32 %22)
  %24 = load i32, i32* @PM_PWER_RTC, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @PM_PWER, align 4
  %28 = call i32 @writel(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %14
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
