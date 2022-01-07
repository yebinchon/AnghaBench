; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.apm_user* }
%struct.apm_user = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@EIO = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@apm_mutex = common dso_local global i32 0, align 4
@standbys_pending = common dso_local global i32 0, align 4
@APM_USER_STANDBY = common dso_local global i32 0, align 4
@suspends_pending = common dso_local global i32 0, align 4
@APM_USER_SUSPEND = common dso_local global i32 0, align 4
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32)* @do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_ioctl(%struct.file* %0, i32 %1, i32 %2) #0 {
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
  %13 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %14 = call i64 @check_apm_user(%struct.apm_user* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EIO, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %21 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %26 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %19
  %30 = load i64, i64* @EPERM, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %110

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %106 [
    i32 129, label %34
    i32 128, label %62
  ]

34:                                               ; preds = %32
  %35 = call i32 @mutex_lock(i32* @apm_mutex)
  %36 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %37 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %42 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %46 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @standbys_pending, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @standbys_pending, align 4
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* @APM_USER_STANDBY, align 4
  %53 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %54 = call i32 @queue_event(i32 %52, %struct.apm_user* %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load i32, i32* @standbys_pending, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @standby()
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 @mutex_unlock(i32* @apm_mutex)
  br label %109

62:                                               ; preds = %32
  %63 = call i32 @mutex_lock(i32* @apm_mutex)
  %64 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %65 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %70 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %74 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @suspends_pending, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @suspends_pending, align 4
  br label %83

79:                                               ; preds = %62
  %80 = load i32, i32* @APM_USER_SUSPEND, align 4
  %81 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %82 = call i32 @queue_event(i32 %80, %struct.apm_user* %81)
  br label %83

83:                                               ; preds = %79, %68
  %84 = load i32, i32* @suspends_pending, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = call i32 @suspend(i32 1)
  store i32 %87, i32* %9, align 4
  %88 = call i32 @mutex_unlock(i32* @apm_mutex)
  br label %103

89:                                               ; preds = %83
  %90 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %91 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = call i32 @mutex_unlock(i32* @apm_mutex)
  %93 = load i32, i32* @apm_suspend_waitqueue, align 4
  %94 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %95 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @wait_event_interruptible(i32 %93, i32 %98)
  %100 = load %struct.apm_user*, %struct.apm_user** %8, align 8
  %101 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %89, %86
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %4, align 8
  br label %110

106:                                              ; preds = %32
  %107 = load i64, i64* @ENOTTY, align 8
  %108 = sub nsw i64 0, %107
  store i64 %108, i64* %4, align 8
  br label %110

109:                                              ; preds = %60
  store i64 0, i64* %4, align 8
  br label %110

110:                                              ; preds = %109, %106, %103, %29, %16
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i64 @check_apm_user(%struct.apm_user*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @queue_event(i32, %struct.apm_user*) #1

declare dso_local i32 @standby(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @suspend(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
