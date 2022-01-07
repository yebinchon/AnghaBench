; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c___ipmi_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c___ipmi_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32 }
%struct.ipmi_recv_msg = type { i32 }
%struct.kernel_ipmi_msg = type { i32, i8*, i32, i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_addr = type { i32 }

@WDOG_TIMER_USE_SMS_OS = common dso_local global i32 0, align 4
@ipmi_version_major = common dso_local global i32 0, align 4
@ipmi_version_minor = common dso_local global i32 0, align 4
@WDOG_DONT_STOP_ON_SET = common dso_local global i8 0, align 1
@ipmi_watchdog_state = common dso_local global i64 0, align 8
@WDOG_TIMEOUT_NONE = common dso_local global i64 0, align 8
@pretimeout = common dso_local global i8 0, align 1
@preaction_val = common dso_local global i32 0, align 4
@WDOG_PRETIMEOUT_NONE = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_WDOG_SET_TIMER = common dso_local global i32 0, align 4
@watchdog_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set timeout error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i32*)* @__ipmi_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipmi_set_timeout(%struct.ipmi_smi_msg* %0, %struct.ipmi_recv_msg* %1, i32* %2) #0 {
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca %struct.ipmi_recv_msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kernel_ipmi_msg, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_system_interface_addr, align 8
  %11 = alloca i32, align 4
  store %struct.ipmi_smi_msg* %0, %struct.ipmi_smi_msg** %4, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = load i32, i32* @WDOG_TIMER_USE_SMS_OS, align 4
  %16 = call i32 @WDOG_SET_TIMER_USE(i8 zeroext %14, i32 %15)
  %17 = load i32, i32* @ipmi_version_major, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ipmi_version_major, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* @ipmi_version_minor, align 4
  %24 = icmp sge i32 %23, 5
  br i1 %24, label %25, label %33

25:                                               ; preds = %22, %3
  %26 = load i8, i8* @WDOG_DONT_STOP_ON_SET, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %27
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  br label %39

33:                                               ; preds = %22, %19
  %34 = load i64, i64* @ipmi_watchdog_state, align 8
  %35 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %25
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = load i64, i64* @ipmi_watchdog_state, align 8
  %44 = call i32 @WDOG_SET_TIMEOUT_ACT(i8 zeroext %42, i64 %43)
  %45 = load i8, i8* @pretimeout, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i64, i64* @ipmi_watchdog_state, align 8
  %50 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* @preaction_val, align 4
  %56 = call i32 @WDOG_SET_PRETIMEOUT_ACT(i8 zeroext %54, i32 %55)
  %57 = load i8, i8* @pretimeout, align 1
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 2
  store i8 %57, i8* %58, align 1
  br label %65

59:                                               ; preds = %48, %39
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = load i32, i32* @WDOG_PRETIMEOUT_NONE, align 4
  %63 = call i32 @WDOG_SET_PRETIMEOUT_ACT(i8 zeroext %61, i32 %62)
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %59, %52
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 5
  %70 = load i8, i8* %69, align 1
  %71 = load i32, i32* @timeout, align 4
  %72 = call i32 @WDOG_SET_TIMEOUT(i8 zeroext %68, i8 zeroext %70, i32 %71)
  %73 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %74 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %10, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %76 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %10, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %10, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %7, i32 0, i32 0
  store i32 6, i32* %78, align 8
  %79 = load i32, i32* @IPMI_WDOG_SET_TIMER, align 4
  %80 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %7, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %82 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %7, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %7, i32 0, i32 2
  store i32 6, i32* %83, align 8
  %84 = load i32, i32* @watchdog_user, align 4
  %85 = bitcast %struct.ipmi_system_interface_addr* %10 to %struct.ipmi_addr*
  %86 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %87 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %5, align 8
  %88 = call i32 @ipmi_request_supply_msgs(i32 %84, %struct.ipmi_addr* %85, i32 0, %struct.kernel_ipmi_msg* %7, i32* null, %struct.ipmi_smi_msg* %86, %struct.ipmi_recv_msg* %87, i32 1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %65
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %101

94:                                               ; preds = %65
  %95 = load i32*, i32** %6, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %91
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @WDOG_SET_TIMER_USE(i8 zeroext, i32) #1

declare dso_local i32 @WDOG_SET_TIMEOUT_ACT(i8 zeroext, i64) #1

declare dso_local i32 @WDOG_SET_PRETIMEOUT_ACT(i8 zeroext, i32) #1

declare dso_local i32 @WDOG_SET_TIMEOUT(i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @ipmi_request_supply_msgs(i32, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, i32*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
