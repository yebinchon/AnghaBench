; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }

@.str = private unnamed_addr constant [17 x i8] c"dpm_suspend_late\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4
@pm_transition = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@async_error = common dso_local global i32 0, align 4
@dpm_suspended_list = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@dpm_late_early_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" late\00", align 1
@suspend_stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@SUSPEND_SUSPEND_LATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"late\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpm_suspend_late(i32 %0) #0 {
  %2 = alloca %struct.TYPE_13__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @TPS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @trace_suspend_resume(i32 %8, i32 %10, i32 1)
  %12 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %13 = bitcast %struct.TYPE_13__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_13__* @pm_transition to i8*), i8* align 4 %13, i64 4, i1 false)
  store i32 0, i32* @async_error, align 4
  br label %14

14:                                               ; preds = %57, %1
  %15 = call i32 @list_empty(%struct.TYPE_15__* @dpm_suspended_list)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dpm_suspended_list, i32 0, i32 0), align 4
  %20 = call %struct.device* @to_device(i32 %19)
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @get_device(%struct.device* %21)
  %23 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @device_suspend_late(%struct.device* %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = call i32 @list_empty(%struct.TYPE_15__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = call i32 @list_move(%struct.TYPE_15__* %35, i32* @dpm_late_early_list)
  br label %37

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_dev_err(%struct.device* %41, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_name(%struct.device* %46)
  %48 = call i32 @dpm_save_failed_dev(i32 %47)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @put_device(%struct.device* %49)
  br label %58

51:                                               ; preds = %37
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @put_device(%struct.device* %52)
  %54 = load i32, i32* @async_error, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %14

58:                                               ; preds = %56, %40, %14
  %59 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %60 = call i32 (...) @async_synchronize_full()
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @async_error, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @suspend_stats, i32 0, i32 0), align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @suspend_stats, i32 0, i32 0), align 4
  %71 = load i32, i32* @SUSPEND_SUSPEND_LATE, align 4
  %72 = call i32 @dpm_save_failed_step(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @resume_event(i32 %74)
  %76 = call i32 @dpm_resume_early(i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dpm_show_time(i32 %78, i32 %81, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @TPS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @trace_suspend_resume(i32 %83, i32 %85, i32 0)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_empty(%struct.TYPE_15__*) #1

declare dso_local %struct.device* @to_device(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_suspend_late(%struct.device*) #1

declare dso_local i32 @list_move(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @pm_dev_err(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dpm_save_failed_dev(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @async_synchronize_full(...) #1

declare dso_local i32 @dpm_save_failed_step(i32) #1

declare dso_local i32 @dpm_resume_early(i32) #1

declare dso_local i32 @resume_event(i32) #1

declare dso_local i32 @dpm_show_time(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
