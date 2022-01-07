; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_battery_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_battery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32)*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.work_struct = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@APM_AC_ONLINE = common dso_local global i64 0, align 8
@APM_AC_OFFLINE = common dso_local global i64 0, align 8
@CHRG_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@SHARPSL_CHARGE_ON_TIME_INTERVAL = common dso_local global i64 0, align 8
@toggle_charger = common dso_local global i32 0, align 4
@SHARPSL_BATT_VOLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Warning: Cannot read main battery!\0A\00", align 1
@APM_BATTERY_STATUS_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Battery: voltage: %d, status: %d, percentage: %d, time: %ld\0A\00", align 1
@APM_BATTERY_STATUS_CRITICAL = common dso_local global i32 0, align 4
@SHARPSL_APM_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Fatal Off\0A\00", align 1
@APM_CRITICAL_SUSPEND = common dso_local global i32 0, align 4
@sharpsl_bat = common dso_local global i32 0, align 4
@SHARPSL_BATCHK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sharpsl_battery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_battery_thread(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %121

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %15 = call i32 %13(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @APM_AC_ONLINE, align 8
  br label %21

19:                                               ; preds = %10
  %20 = load i64, i64* @APM_AC_OFFLINE, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 0), align 8
  %29 = load i64, i64* @CHRG_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 5), align 8
  %34 = load i64, i64* @SHARPSL_CHARGE_ON_TIME_INTERVAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @time_after(i32 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @schedule_delayed_work(i32* @toggle_charger, i32 0)
  br label %40

40:                                               ; preds = %38, %31, %27, %21
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load i32, i32* @SHARPSL_BATT_VOLT, align 4
  %49 = call i32 %47(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %41

57:                                               ; preds = %52, %41
  %58 = load i32, i32* %3, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 4), align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %68 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @sharpsl_average_value(i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @get_apm_status(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @get_percentage(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %77 = load i64, i64* @APM_AC_ONLINE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @APM_BATTERY_STATUS_HIGH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %79, %69
  %88 = load i32, i32* %3, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 2), align 4
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 1), align 8
  %96 = load i32, i32* @jiffies, align 4
  %97 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 0), align 8
  %99 = load i64, i64* @APM_AC_ONLINE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %91
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 3, i32 3), align 8
  %103 = load i32, i32* @APM_BATTERY_STATUS_CRITICAL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %107 = load i32, i32* @SHARPSL_APM_QUEUED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @SHARPSL_APM_QUEUED, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %113 = or i32 %112, %111
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 1), align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_pm, i32 0, i32 2), align 4
  %115 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @APM_CRITICAL_SUSPEND, align 4
  %117 = call i32 @apm_queue_event(i32 %116)
  br label %118

118:                                              ; preds = %110, %105, %101, %91
  %119 = load i32, i32* @SHARPSL_BATCHK_TIME, align 4
  %120 = call i32 @schedule_delayed_work(i32* @sharpsl_bat, i32 %119)
  br label %121

121:                                              ; preds = %118, %9
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sharpsl_average_value(i32) #1

declare dso_local i32 @get_apm_status(i32) #1

declare dso_local i32 @get_percentage(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @apm_queue_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
