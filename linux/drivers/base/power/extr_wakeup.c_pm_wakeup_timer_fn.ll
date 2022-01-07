; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_wakeup_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_wakeup_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i32, i32, i64, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ws = common dso_local global %struct.wakeup_source* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pm_wakeup_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_wakeup_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.wakeup_source*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %6 = ptrtoint %struct.wakeup_source* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.wakeup_source* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.wakeup_source* %9, %struct.wakeup_source** %3, align 8
  %10 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %11 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %15 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %20 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %26 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @time_after_eq(i32 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %32 = call i32 @wakeup_source_deactivate(%struct.wakeup_source* %31)
  %33 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %34 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %23, %18, %1
  %38 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %39 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.wakeup_source* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @wakeup_source_deactivate(%struct.wakeup_source*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
