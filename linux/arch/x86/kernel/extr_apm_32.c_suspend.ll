; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_user = type { i32, i64, %struct.apm_user* }

@PMSG_SUSPEND = common dso_local global i32 0, align 4
@APM_STATE_SUSPEND = common dso_local global i32 0, align 4
@ignore_normal_resume = common dso_local global i32 0, align 4
@APM_NO_ERROR = common dso_local global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@EIO = common dso_local global i32 0, align 4
@PMSG_RESUME = common dso_local global i32 0, align 4
@APM_NORMAL_RESUME = common dso_local global i32 0, align 4
@user_list_lock = common dso_local global i32 0, align 4
@user_list = common dso_local global %struct.apm_user* null, align 8
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_user*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PMSG_SUSPEND, align 4
  %6 = call i32 @dpm_suspend_start(i32 %5)
  %7 = load i32, i32* @PMSG_SUSPEND, align 4
  %8 = call i32 @dpm_suspend_end(i32 %7)
  %9 = call i32 (...) @local_irq_disable()
  %10 = call i32 (...) @syscore_suspend()
  %11 = call i32 (...) @local_irq_enable()
  %12 = call i32 (...) @save_processor_state()
  %13 = load i32, i32* @APM_STATE_SUSPEND, align 4
  %14 = call i32 @set_system_power_state(i32 %13)
  store i32 %14, i32* %3, align 4
  store i32 1, i32* @ignore_normal_resume, align 4
  %15 = call i32 (...) @restore_processor_state()
  %16 = call i32 (...) @local_irq_disable()
  %17 = call i32 (...) @reinit_timer()
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @APM_NO_ERROR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @APM_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @APM_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @apm_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @APM_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 0, %34 ], [ %37, %35 ]
  store i32 %39, i32* %3, align 4
  %40 = call i32 (...) @syscore_resume()
  %41 = call i32 (...) @local_irq_enable()
  %42 = load i32, i32* @PMSG_RESUME, align 4
  %43 = call i32 @dpm_resume_start(i32 %42)
  %44 = load i32, i32* @PMSG_RESUME, align 4
  %45 = call i32 @dpm_resume_end(i32 %44)
  %46 = load i32, i32* @APM_NORMAL_RESUME, align 4
  %47 = call i32 @queue_event(i32 %46, i32* null)
  %48 = call i32 @spin_lock(i32* @user_list_lock)
  %49 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  store %struct.apm_user* %49, %struct.apm_user** %4, align 8
  br label %50

50:                                               ; preds = %59, %38
  %51 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %52 = icmp ne %struct.apm_user* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %55 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %58 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %61 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %60, i32 0, i32 2
  %62 = load %struct.apm_user*, %struct.apm_user** %61, align 8
  store %struct.apm_user* %62, %struct.apm_user** %4, align 8
  br label %50

63:                                               ; preds = %50
  %64 = call i32 @spin_unlock(i32* @user_list_lock)
  %65 = call i32 @wake_up_interruptible(i32* @apm_suspend_waitqueue)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @dpm_suspend_start(i32) #1

declare dso_local i32 @dpm_suspend_end(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @syscore_suspend(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @save_processor_state(...) #1

declare dso_local i32 @set_system_power_state(i32) #1

declare dso_local i32 @restore_processor_state(...) #1

declare dso_local i32 @reinit_timer(...) #1

declare dso_local i32 @apm_error(i8*, i32) #1

declare dso_local i32 @syscore_resume(...) #1

declare dso_local i32 @dpm_resume_start(i32) #1

declare dso_local i32 @dpm_resume_end(i32) #1

declare dso_local i32 @queue_event(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
