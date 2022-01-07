; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_apm-emulation.c_apm_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_apm-emulation.c_apm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.apm_user* }
%struct.apm_user = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@state_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SUSPEND_ACKED = common dso_local global i32 0, align 4
@suspend_acks_pending = common dso_local global i32 0, align 4
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SUSPEND_WAIT = common dso_local global i32 0, align 4
@PM_SUSPEND_MEM = common dso_local global i32 0, align 4
@SUSPEND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32)* @apm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apm_ioctl(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.apm_user*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.apm_user*, %struct.apm_user** %11, align 8
  store %struct.apm_user* %12, %struct.apm_user** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %16 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %21 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %3
  %25 = load i64, i64* @EPERM, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %85

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %82 [
    i32 130, label %29
  ]

29:                                               ; preds = %27
  %30 = call i32 @mutex_lock(i32* @state_lock)
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %34 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %36 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %64 [
    i32 128, label %38
    i32 129, label %58
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* @SUSPEND_ACKED, align 4
  %40 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %41 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 @atomic_dec(i32* @suspend_acks_pending)
  %43 = call i32 @mutex_unlock(i32* @state_lock)
  %44 = call i32 @wake_up(i32* @apm_suspend_waitqueue)
  br label %45

45:                                               ; preds = %55, %38
  %46 = load i32, i32* @apm_suspend_waitqueue, align 4
  %47 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %48 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SUSPEND_ACKED, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @wait_event_freezable(i32 %46, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 @msleep(i32 10)
  br label %45

57:                                               ; preds = %45
  br label %73

58:                                               ; preds = %29
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %62 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = call i32 @mutex_unlock(i32* @state_lock)
  br label %73

64:                                               ; preds = %29
  %65 = load i32, i32* @SUSPEND_WAIT, align 4
  %66 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %67 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = call i32 @mutex_unlock(i32* @state_lock)
  %69 = load i32, i32* @PM_SUSPEND_MEM, align 4
  %70 = call i32 @pm_suspend(i32 %69)
  %71 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %72 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %58, %57
  %74 = call i32 @mutex_lock(i32* @state_lock)
  %75 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %76 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @SUSPEND_NONE, align 4
  %79 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %80 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = call i32 @mutex_unlock(i32* @state_lock)
  br label %82

82:                                               ; preds = %27, %73
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %82, %24
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_freezable(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm_suspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
