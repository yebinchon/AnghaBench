; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@async_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"noirq driver \00", align 1
@DPM_FLAG_LEAVE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @__device_suspend_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__device_suspend_noirq(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @TRACE_DEVICE(%struct.device* %11)
  %13 = call i32 @TRACE_SUSPEND(i32 0)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dpm_wait_for_subordinate(%struct.device* %14, i32 %15)
  %17 = load i32, i32* @async_error, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %132

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  br label %132

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @dpm_subsys_suspend_noirq_cb(%struct.device* %34, i32 %35, i8** %8)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %75

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dpm_subsys_suspend_late_cb(%struct.device* %41, i32 %42, i32* null)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i64 @dev_pm_smart_suspend_and_suspended(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %86

54:                                               ; preds = %50, %40
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @pm_noirq_op(i64 %71, i32 %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %66, %59, %54
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @dpm_run_callback(i64 %76, %struct.device* %77, i32 %78, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* @async_error, align 4
  br label %132

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* @DPM_FLAG_LEAVE_SUSPENDED, align 4
  %92 = call i64 @dev_pm_test_driver_flags(%struct.device* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %86
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = call i32 @atomic_read(i32* %103)
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @device_must_resume(%struct.device* %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %106, %100, %94
  %113 = phi i1 [ true, %100 ], [ true, %94 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  br label %122

118:                                              ; preds = %86
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = getelementptr inbounds %struct.device, %struct.device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dpm_superior_set_must_resume(%struct.device* %129)
  br label %131

131:                                              ; preds = %128, %122
  br label %132

132:                                              ; preds = %131, %83, %32, %19
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = call i32 @complete_all(i32* %135)
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @TRACE_SUSPEND(i32 %137)
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_SUSPEND(i32) #1

declare dso_local i32 @dpm_wait_for_subordinate(%struct.device*, i32) #1

declare dso_local i64 @dpm_subsys_suspend_noirq_cb(%struct.device*, i32, i8**) #1

declare dso_local i32 @dpm_subsys_suspend_late_cb(%struct.device*, i32, i32*) #1

declare dso_local i64 @dev_pm_smart_suspend_and_suspended(%struct.device*) #1

declare dso_local i64 @pm_noirq_op(i64, i32) #1

declare dso_local i32 @dpm_run_callback(i64, %struct.device*, i32, i8*) #1

declare dso_local i64 @dev_pm_test_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @device_must_resume(%struct.device*, i32, i32) #1

declare dso_local i32 @dpm_superior_set_must_resume(%struct.device*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
