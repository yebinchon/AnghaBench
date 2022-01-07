; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@async_error = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"late driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @__device_suspend_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__device_suspend_late(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @TRACE_DEVICE(%struct.device* %10)
  %12 = call i32 @TRACE_SUSPEND(i32 0)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @__pm_runtime_disable(%struct.device* %13, i32 0)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dpm_wait_for_subordinate(%struct.device* %15, i32 %16)
  %18 = load i32, i32* @async_error, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %95

21:                                               ; preds = %3
  %22 = call i64 (...) @pm_wakeup_pending()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* @async_error, align 4
  br label %95

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  br label %95

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @dpm_subsys_suspend_late_cb(%struct.device* %41, i32 %42, i8** %8)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %78

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i64 @dev_pm_smart_suspend_and_suspended(%struct.device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dpm_subsys_suspend_noirq_cb(%struct.device* %52, i32 %53, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %91

57:                                               ; preds = %51, %47
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @pm_late_early_op(i64 %74, i32 %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %69, %62, %57
  br label %78

78:                                               ; preds = %77, %46
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @dpm_run_callback(i64 %79, %struct.device* %80, i32 %81, i8* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* @async_error, align 4
  br label %95

88:                                               ; preds = %78
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dpm_propagate_wakeup_to_parent(%struct.device* %89)
  br label %91

91:                                               ; preds = %88, %56
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %86, %39, %24, %20
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @TRACE_SUSPEND(i32 %96)
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = call i32 @complete_all(i32* %100)
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_SUSPEND(i32) #1

declare dso_local i32 @__pm_runtime_disable(%struct.device*, i32) #1

declare dso_local i32 @dpm_wait_for_subordinate(%struct.device*, i32) #1

declare dso_local i64 @pm_wakeup_pending(...) #1

declare dso_local i64 @dpm_subsys_suspend_late_cb(%struct.device*, i32, i8**) #1

declare dso_local i64 @dev_pm_smart_suspend_and_suspended(%struct.device*) #1

declare dso_local i32 @dpm_subsys_suspend_noirq_cb(%struct.device*, i32, i32*) #1

declare dso_local i64 @pm_late_early_op(i64, i32) #1

declare dso_local i32 @dpm_run_callback(i64, %struct.device*, i32, i8*) #1

declare dso_local i32 @dpm_propagate_wakeup_to_parent(%struct.device*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
