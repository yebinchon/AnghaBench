; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i64, i32, i32 }
%struct.timespec = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@MAX_NICE = common dso_local global i32 0, align 4
@SI_SM_IDLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ipmi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.smi_info*
  store %struct.smi_info* %9, %struct.smi_info** %3, align 8
  %10 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = call i32 @ipmi_si_set_not_busy(%struct.timespec* %6)
  %12 = load i32, i32* @current, align 4
  %13 = load i32, i32* @MAX_NICE, align 4
  %14 = call i32 @set_user_nice(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %89, %1
  %16 = call i32 (...) @kthread_should_stop()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %90

19:                                               ; preds = %15
  %20 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %21 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %20, i32 0, i32 2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %25 = call i32 @smi_event_handler(%struct.smi_info* %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SI_SM_IDLE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @SI_TIMEOUT_JIFFIES, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @smi_mod_timer(%struct.smi_info* %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29, %19
  %41 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %42 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %41, i32 0, i32 2
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %47 = call i32 @ipmi_thread_busy_wait(i32 %45, %struct.smi_info* %46, %struct.timespec* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %89

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %61 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @schedule()
  br label %68

66:                                               ; preds = %59
  %67 = call i32 @usleep_range(i32 100, i32 200)
  br label %68

68:                                               ; preds = %66, %64
  br label %88

69:                                               ; preds = %56, %52
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SI_SM_IDLE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %75 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %74, i32 0, i32 0
  %76 = call i64 @atomic_read(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @schedule_timeout_interruptible(i32 100)
  br label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %82 = call i32 @__set_current_state(i32 %81)
  %83 = call i32 (...) @schedule()
  br label %84

84:                                               ; preds = %80, %78
  br label %87

85:                                               ; preds = %69
  %86 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %51
  br label %15

90:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipmi_si_set_not_busy(%struct.timespec*) #2

declare dso_local i32 @set_user_nice(i32, i32) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @smi_event_handler(%struct.smi_info*, i32) #2

declare dso_local i32 @smi_mod_timer(%struct.smi_info*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @ipmi_thread_busy_wait(i32, %struct.smi_info*, %struct.timespec*) #2

declare dso_local i32 @schedule(...) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @schedule_timeout_interruptible(i32) #2

declare dso_local i32 @__set_current_state(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
