; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_user = type { i64, i64, i32*, i32, i32, i32, i32, i32, %struct.apm_user* }

@user_list_lock = common dso_local global i32 0, align 4
@user_list = common dso_local global %struct.apm_user* null, align 8
@APM_MAX_EVENTS = common dso_local global i64 0, align 8
@queue_event.notified = internal global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"an event queue overflowed\0A\00", align 1
@suspends_pending = common dso_local global i32 0, align 4
@standbys_pending = common dso_local global i32 0, align 4
@apm_waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.apm_user*)* @queue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_event(i32 %0, %struct.apm_user* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_user*, align 8
  %5 = alloca %struct.apm_user*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.apm_user* %1, %struct.apm_user** %4, align 8
  %6 = call i32 @spin_lock(i32* @user_list_lock)
  %7 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  %8 = icmp eq %struct.apm_user* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %102

10:                                               ; preds = %2
  %11 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  store %struct.apm_user* %11, %struct.apm_user** %5, align 8
  br label %12

12:                                               ; preds = %96, %10
  %13 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %14 = icmp ne %struct.apm_user* %13, null
  br i1 %14, label %15, label %100

15:                                               ; preds = %12
  %16 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %17 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %18 = icmp eq %struct.apm_user* %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %21 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %15
  br label %96

25:                                               ; preds = %19
  %26 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %27 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* @APM_MAX_EVENTS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %34 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %37 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %40 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load i32, i32* @queue_event.notified, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @queue_event.notified, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %51 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* @APM_MAX_EVENTS, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %58 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %63 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %66 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  %69 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %70 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %75 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %60
  br label %96

79:                                               ; preds = %73
  %80 = load i32, i32* %3, align 4
  switch i32 %80, label %95 [
    i32 130, label %81
    i32 128, label %81
    i32 131, label %88
    i32 129, label %88
  ]

81:                                               ; preds = %79, %79
  %82 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %83 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @suspends_pending, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @suspends_pending, align 4
  br label %95

88:                                               ; preds = %79, %79
  %89 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %90 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @standbys_pending, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @standbys_pending, align 4
  br label %95

95:                                               ; preds = %79, %88, %81
  br label %96

96:                                               ; preds = %95, %78, %24
  %97 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %98 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %97, i32 0, i32 8
  %99 = load %struct.apm_user*, %struct.apm_user** %98, align 8
  store %struct.apm_user* %99, %struct.apm_user** %5, align 8
  br label %12

100:                                              ; preds = %12
  %101 = call i32 @wake_up_interruptible(i32* @apm_waitqueue)
  br label %102

102:                                              ; preds = %100, %9
  %103 = call i32 @spin_unlock(i32* @user_list_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
