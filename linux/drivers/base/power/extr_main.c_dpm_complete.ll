; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.list_head = type { i32 }
%struct.device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dpm_complete\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4
@dpm_prepared_list = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dpm_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpm_complete(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.list_head, align 4
  %4 = alloca %struct.device*, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = call i32 @TPS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @trace_suspend_resume(i32 %6, i32 %8, i32 1)
  %10 = call i32 (...) @might_sleep()
  %11 = call i32 @INIT_LIST_HEAD(%struct.list_head* %3)
  %12 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  br label %13

13:                                               ; preds = %17, %1
  %14 = call i32 @list_empty(%struct.TYPE_9__* @dpm_prepared_list)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dpm_prepared_list, i32 0, i32 0), align 4
  %19 = call %struct.device* @to_device(i32 %18)
  store %struct.device* %19, %struct.device** %4, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @get_device(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i32 @list_move(i32* %27, %struct.list_head* %3)
  %29 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @trace_device_pm_callback_start(%struct.device* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_complete(%struct.device* %34, i32 %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @trace_device_pm_callback_end(%struct.device* %38, i32 0)
  %40 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  br label %13

43:                                               ; preds = %13
  %44 = call i32 @list_splice(%struct.list_head* %3, i32* @dpm_list)
  %45 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %46 = call i32 (...) @device_unblock_probing()
  %47 = call i32 @TPS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trace_suspend_resume(i32 %47, i32 %49, i32 0)
  ret void
}

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_9__*) #1

declare dso_local %struct.device* @to_device(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_device_pm_callback_start(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_complete(%struct.device*, i32) #1

declare dso_local i32 @trace_device_pm_callback_end(%struct.device*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i32 @device_unblock_probing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
