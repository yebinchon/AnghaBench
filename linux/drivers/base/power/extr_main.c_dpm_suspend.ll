; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }

@.str = private unnamed_addr constant [12 x i8] c"dpm_suspend\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4
@pm_transition = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@async_error = common dso_local global i32 0, align 4
@dpm_prepared_list = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dpm_suspended_list = common dso_local global i32 0, align 4
@suspend_stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@SUSPEND_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpm_suspend(i32 %0) #0 {
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @trace_suspend_resume(i32 %8, i32 %10, i32 1)
  %12 = call i32 (...) @might_sleep()
  %13 = call i32 (...) @devfreq_suspend()
  %14 = call i32 (...) @cpufreq_suspend()
  %15 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %16 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_12__* @pm_transition to i8*), i8* align 4 %16, i64 4, i1 false)
  store i32 0, i32* @async_error, align 4
  br label %17

17:                                               ; preds = %60, %1
  %18 = call i32 @list_empty(%struct.TYPE_14__* @dpm_prepared_list)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dpm_prepared_list, i32 0, i32 0), align 4
  %23 = call %struct.device* @to_device(i32 %22)
  store %struct.device* %23, %struct.device** %5, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  %26 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @device_suspend(%struct.device* %27)
  store i32 %28, i32* %4, align 4
  %29 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_dev_err(%struct.device* %33, i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_name(%struct.device* %38)
  %40 = call i32 @dpm_save_failed_dev(i32 %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  br label %61

43:                                               ; preds = %21
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = call i32 @list_empty(%struct.TYPE_14__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = call i32 @list_move(%struct.TYPE_14__* %52, i32* @dpm_suspended_list)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @put_device(%struct.device* %55)
  %57 = load i32, i32* @async_error, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  br label %17

61:                                               ; preds = %59, %32, %17
  %62 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %63 = call i32 (...) @async_synchronize_full()
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @async_error, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @suspend_stats, i32 0, i32 0), align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @suspend_stats, i32 0, i32 0), align 4
  %74 = load i32, i32* @SUSPEND_SUSPEND, align 4
  %75 = call i32 @dpm_save_failed_step(i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dpm_show_time(i32 %77, i32 %80, i32 %78, i32* null)
  %82 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @trace_suspend_resume(i32 %82, i32 %84, i32 0)
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @devfreq_suspend(...) #1

declare dso_local i32 @cpufreq_suspend(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_empty(%struct.TYPE_14__*) #1

declare dso_local %struct.device* @to_device(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_suspend(%struct.device*) #1

declare dso_local i32 @pm_dev_err(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dpm_save_failed_dev(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @list_move(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @async_synchronize_full(...) #1

declare dso_local i32 @dpm_save_failed_step(i32) #1

declare dso_local i32 @dpm_show_time(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
