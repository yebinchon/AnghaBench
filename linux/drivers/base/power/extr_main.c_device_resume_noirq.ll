; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@PM_EVENT_THAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"noirq driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32)* @device_resume_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_resume_noirq(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @TRACE_DEVICE(%struct.device* %13)
  %15 = call i32 @TRACE_RESUME(i32 0)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  br label %128

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %128

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dpm_wait_for_superior(%struct.device* %36, i32 %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_pm_may_skip_resume(%struct.device* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @dpm_subsys_resume_noirq_cb(%struct.device* %41, i64 %43, i8** %8)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %105

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %112

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i64 @dev_pm_smart_suspend_and_suspended(%struct.device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @suspend_event(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dpm_subsys_suspend_late_cb(%struct.device* %61, i64 %63, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dpm_subsys_suspend_noirq_cb(%struct.device* %67, i64 %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PM_EVENT_THAW, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %112

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @pm_runtime_set_active(%struct.device* %79)
  br label %81

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %66, %56
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @pm_noirq_op(i64 %100, i64 %102)
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %95, %88, %83
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @dpm_run_callback(i64 %106, %struct.device* %107, i64 %110, i8* %108)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %105, %77, %51
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @pm_runtime_set_suspended(%struct.device* %125)
  br label %127

127:                                              ; preds = %118, %112
  br label %128

128:                                              ; preds = %127, %34, %27
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = call i32 @complete_all(i32* %131)
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @TRACE_RESUME(i32 %133)
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_RESUME(i32) #1

declare dso_local i32 @dpm_wait_for_superior(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_may_skip_resume(%struct.device*) #1

declare dso_local i64 @dpm_subsys_resume_noirq_cb(%struct.device*, i64, i8**) #1

declare dso_local i64 @dev_pm_smart_suspend_and_suspended(%struct.device*) #1

declare dso_local i64 @suspend_event(i64) #1

declare dso_local i32 @dpm_subsys_suspend_late_cb(%struct.device*, i64, i32*) #1

declare dso_local i32 @dpm_subsys_suspend_noirq_cb(%struct.device*, i64, i32*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i64 @pm_noirq_op(i64, i64) #1

declare dso_local i32 @dpm_run_callback(i64, %struct.device*, i64, i8*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
