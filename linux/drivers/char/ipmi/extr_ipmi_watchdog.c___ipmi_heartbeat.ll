; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c___ipmi_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c___ipmi_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.kernel_ipmi_msg = type { i32, i64, i32*, i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_addr = type { i32 }

@ipmi_watchdog_state = common dso_local global i64 0, align 8
@WDOG_TIMEOUT_NONE = common dso_local global i64 0, align 8
@msg_tofree = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_WDOG_RESET_TIMER = common dso_local global i32 0, align 4
@watchdog_user = common dso_local global i32 0, align 4
@smi_msg = common dso_local global i32 0, align 4
@recv_msg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"heartbeat send failure: %d\0A\00", align 1
@msg_wait = common dso_local global i32 0, align 4
@IPMI_WDOG_TIMER_NOT_INIT_RESP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Unable to restore the IPMI watchdog's settings, giving up\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_NO_HB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Unable to send the command to set the watchdog's settings, giving up\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__ipmi_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipmi_heartbeat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.kernel_ipmi_msg, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_system_interface_addr, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %55, %0
  %7 = load i64, i64* @ipmi_watchdog_state, align 8
  %8 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %68

11:                                               ; preds = %6
  %12 = call i32 @atomic_set(i32* @msg_tofree, i32 2)
  %13 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %14 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %16 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %4, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %2, i32 0, i32 0
  store i32 6, i32* %18, align 8
  %19 = load i32, i32* @IPMI_WDOG_RESET_TIMER, align 4
  %20 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %2, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %2, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %2, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @watchdog_user, align 4
  %24 = bitcast %struct.ipmi_system_interface_addr* %4 to %struct.ipmi_addr*
  %25 = call i32 @ipmi_request_supply_msgs(i32 %23, %struct.ipmi_addr* %24, i32 0, %struct.kernel_ipmi_msg* %2, i32* null, i32* @smi_msg, %struct.TYPE_5__* @recv_msg, i32 1)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %1, align 4
  br label %68

32:                                               ; preds = %11
  %33 = call i32 @wait_for_completion(i32* @msg_wait)
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recv_msg, i32 0, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPMI_WDOG_TIMER_NOT_INIT_RESP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load i32, i32* @IPMI_SET_TIMEOUT_NO_HB, align 4
  %50 = call i32 @_ipmi_set_timeout(i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %66

55:                                               ; preds = %48
  br label %6

56:                                               ; preds = %32
  %57 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recv_msg, i32 0, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %53, %44
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %66, %28, %10
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipmi_request_supply_msgs(i32, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, i32*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_ipmi_set_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
