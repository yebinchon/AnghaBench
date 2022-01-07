; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_register_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_register_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4
@watchdog_user = common dso_local global i32* null, align 8
@ifnum_to_use = common dso_local global i32 0, align 4
@watchdog_ifnum = common dso_local global i32 0, align 4
@ipmi_hndlrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to register with ipmi\0A\00", align 1
@ipmi_version_major = common dso_local global i32 0, align 4
@ipmi_version_minor = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to get IPMI version, assuming 1.0\0A\00", align 1
@ipmi_wdog_miscdev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to register misc device\0A\00", align 1
@start_now = common dso_local global i64 0, align 8
@action_val = common dso_local global i32 0, align 4
@ipmi_watchdog_state = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_FORCE_HB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Starting now!\0A\00", align 1
@WDOG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_NO_HB = common dso_local global i32 0, align 4
@WDOG_PREOP_NONE = common dso_local global i32 0, align 4
@WDOG_TIMEOUT_RESET = common dso_local global i32 0, align 4
@nmi_handler_registered = common dso_local global i64 0, align 8
@preop_val = common dso_local global i32 0, align 4
@pretimeout = common dso_local global i32 0, align 4
@testing_nmi = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ipmi_register_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_register_watchdog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @EBUSY, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @watchdog_user, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* @ifnum_to_use, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @ifnum_to_use, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %41

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* @watchdog_ifnum, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ipmi_create_user(i32 %19, i32* @ipmi_hndlrs, i32* null, i32** @watchdog_user)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %41

25:                                               ; preds = %17
  %26 = load i32*, i32** @watchdog_user, align 8
  %27 = call i32 @ipmi_get_version(i32* %26, i32* @ipmi_version_major, i64* @ipmi_version_minor)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @ipmi_version_major, align 4
  store i64 0, i64* @ipmi_version_minor, align 8
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 @misc_register(i32* @ipmi_wdog_miscdev)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** @watchdog_user, align 8
  %38 = call i32 @ipmi_destroy_user(i32* %37)
  store i32* null, i32** @watchdog_user, align 8
  %39 = call i32 @pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23, %16, %8
  %42 = load i64, i64* @start_now, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  store i64 0, i64* @start_now, align 8
  %48 = load i32, i32* @action_val, align 4
  store i32 %48, i32* @ipmi_watchdog_state, align 4
  %49 = load i32, i32* @IPMI_SET_TIMEOUT_FORCE_HB, align 4
  %50 = call i32 @ipmi_set_timeout(i32 %49)
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %56

52:                                               ; preds = %44, %41
  %53 = load i32, i32* @WDOG_TIMEOUT_NONE, align 4
  store i32 %53, i32* @ipmi_watchdog_state, align 4
  %54 = load i32, i32* @IPMI_SET_TIMEOUT_NO_HB, align 4
  %55 = call i32 @ipmi_set_timeout(i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @ipmi_create_user(i32, i32*, i32*, i32**) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @ipmi_get_version(i32*, i32*, i64*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @ipmi_destroy_user(i32*) #1

declare dso_local i32 @ipmi_set_timeout(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
