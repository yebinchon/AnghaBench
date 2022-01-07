; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_must_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_must_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@PM_EVENT_RESUME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32)* @device_must_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_must_resume(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @resume_event(i64 %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dpm_subsys_suspend_late_cb(%struct.device* %17, i64 %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dpm_subsys_resume_early_cb(%struct.device* %23, i64 %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dpm_subsys_resume_noirq_cb(%struct.device* %29, i64 %31, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @pm_runtime_status_suspended(%struct.device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PM_EVENT_RESUME, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i64 @device_can_wakeup(%struct.device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @device_may_wakeup(%struct.device* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i1 [ true, %38 ], [ %53, %52 ]
  br label %56

56:                                               ; preds = %54, %34
  %57 = phi i1 [ false, %34 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %28, %22, %16, %3
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @resume_event(i64) #1

declare dso_local i32 @dpm_subsys_suspend_late_cb(%struct.device*, i64, i32*) #1

declare dso_local i32 @dpm_subsys_resume_early_cb(%struct.device*, i64, i32*) #1

declare dso_local i32 @dpm_subsys_resume_noirq_cb(%struct.device*, i64, i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.device*) #1

declare dso_local i64 @device_can_wakeup(%struct.device*) #1

declare dso_local i32 @device_may_wakeup(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
