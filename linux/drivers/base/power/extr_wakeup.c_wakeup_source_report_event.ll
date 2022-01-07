; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i32, i32, i32 }

@events_check_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wakeup_source*, i32)* @wakeup_source_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_source_report_event(%struct.wakeup_source* %0, i32 %1) #0 {
  %3 = alloca %struct.wakeup_source*, align 8
  %4 = alloca i32, align 4
  store %struct.wakeup_source* %0, %struct.wakeup_source** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* @events_check_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %13 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %18 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %23 = call i32 @wakeup_source_activate(%struct.wakeup_source* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @pm_system_wakeup()
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @wakeup_source_activate(%struct.wakeup_source*) #1

declare dso_local i32 @pm_system_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
