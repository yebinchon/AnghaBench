; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_wdog_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_ipmi_wdog_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_recv_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@IPMI_WDOG_RESET_TIMER = common dso_local global i64 0, align 8
@IPMI_WDOG_TIMER_NOT_INIT_RESP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [107 x i8] c"response: The IPMI controller appears to have been reset, will attempt to reinitialize the watchdog timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"response: Error %x on cmd %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_recv_msg*, i8*)* @ipmi_wdog_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_wdog_msg_handler(%struct.ipmi_recv_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.ipmi_recv_msg*, align 8
  %4 = alloca i8*, align 8
  store %struct.ipmi_recv_msg* %0, %struct.ipmi_recv_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %6 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPMI_WDOG_RESET_TIMER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %13 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPMI_WDOG_TIMER_NOT_INIT_RESP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  br label %43

22:                                               ; preds = %11, %2
  %23 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %24 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %32 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %38 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %40)
  br label %42

42:                                               ; preds = %30, %22
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %45 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %44)
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
