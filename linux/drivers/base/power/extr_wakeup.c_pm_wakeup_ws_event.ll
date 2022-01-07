; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_wakeup_ws_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_wakeup_ws_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm_wakeup_ws_event(%struct.wakeup_source* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wakeup_source*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wakeup_source* %0, %struct.wakeup_source** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %10 = icmp ne %struct.wakeup_source* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %59

12:                                               ; preds = %3
  %13 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %14 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @wakeup_source_report_event(%struct.wakeup_source* %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %24 = call i32 @wakeup_source_deactivate(%struct.wakeup_source* %23)
  br label %54

25:                                               ; preds = %12
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add i64 %26, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i64 1, i64* %8, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %35 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %41 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @time_after(i64 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38, %33
  %46 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %47 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %46, i32 0, i32 2
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @mod_timer(i32* %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %52 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %38
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %56 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %55, i32 0, i32 1
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wakeup_source_report_event(%struct.wakeup_source*, i32) #1

declare dso_local i32 @wakeup_source_deactivate(%struct.wakeup_source*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
