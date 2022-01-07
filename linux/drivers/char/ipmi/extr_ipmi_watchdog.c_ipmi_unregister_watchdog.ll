; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_unregister_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_unregister_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }

@watchdog_user = common dso_local global %struct.ipmi_user* null, align 8
@watchdog_ifnum = common dso_local global i32 0, align 4
@ipmi_wdog_miscdev = common dso_local global i32 0, align 4
@msg_tofree = common dso_local global i32 0, align 4
@ipmi_watchdog_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error unlinking from IPMI: %d\0A\00", align 1
@ipmi_start_timer_on_heartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ipmi_unregister_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_unregister_watchdog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_user*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.ipmi_user*, %struct.ipmi_user** @watchdog_user, align 8
  store %struct.ipmi_user* %5, %struct.ipmi_user** %4, align 8
  %6 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %7 = icmp ne %struct.ipmi_user* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @watchdog_ifnum, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %32

14:                                               ; preds = %9
  %15 = call i32 @misc_deregister(i32* @ipmi_wdog_miscdev)
  store %struct.ipmi_user* null, %struct.ipmi_user** @watchdog_user, align 8
  br label %16

16:                                               ; preds = %19, %14
  %17 = call i64 @atomic_read(i32* @msg_tofree)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @msg_free_smi(i32* null)
  br label %16

21:                                               ; preds = %16
  %22 = call i32 @mutex_lock(i32* @ipmi_watchdog_mutex)
  %23 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %24 = call i32 @ipmi_destroy_user(%struct.ipmi_user* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  store i32 1, i32* @ipmi_start_timer_on_heartbeat, align 4
  %31 = call i32 @mutex_unlock(i32* @ipmi_watchdog_mutex)
  br label %32

32:                                               ; preds = %30, %13, %8
  ret void
}

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msg_free_smi(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipmi_destroy_user(%struct.ipmi_user*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
