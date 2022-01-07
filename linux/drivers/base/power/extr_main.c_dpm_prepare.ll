; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }

@.str = private unnamed_addr constant [12 x i8] c"dpm_prepare\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4
@dpm_list = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Device %s not prepared for power transition: code %d\0A\00", align 1
@dpm_prepared_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpm_prepare(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @trace_suspend_resume(i32 %6, i32 %8, i32 1)
  %10 = call i32 (...) @might_sleep()
  %11 = call i32 (...) @wait_for_device_probe()
  %12 = call i32 (...) @device_block_probing()
  %13 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  br label %14

14:                                               ; preds = %67, %43, %1
  %15 = call i32 @list_empty(%struct.TYPE_10__* @dpm_list)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dpm_list, i32 0, i32 0), align 4
  %20 = call %struct.device* @to_device(i32 %19)
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @get_device(%struct.device* %21)
  %23 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @trace_device_pm_callback_start(%struct.device* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_prepare(%struct.device* %28, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @trace_device_pm_callback_end(%struct.device* %32, i32 %33)
  %35 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %18
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @put_device(%struct.device* %44)
  store i32 0, i32* %3, align 4
  br label %14

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_name(%struct.device* %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @put_device(%struct.device* %51)
  br label %70

53:                                               ; preds = %18
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @list_empty(%struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = call i32 @list_move_tail(%struct.TYPE_10__* %65, i32* @dpm_prepared_list)
  br label %67

67:                                               ; preds = %62, %53
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @put_device(%struct.device* %68)
  br label %14

70:                                               ; preds = %46, %14
  %71 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %72 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @trace_suspend_resume(i32 %72, i32 %74, i32 0)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @wait_for_device_probe(...) #1

declare dso_local i32 @device_block_probing(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_10__*) #1

declare dso_local %struct.device* @to_device(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_device_pm_callback_start(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_prepare(%struct.device*, i32) #1

declare dso_local i32 @trace_device_pm_callback_end(%struct.device*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @list_move_tail(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
