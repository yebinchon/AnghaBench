; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c__ipmi_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c__ipmi_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_user = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@msg_tofree = common dso_local global i32 0, align 4
@smi_msg = common dso_local global i32 0, align 4
@recv_msg = common dso_local global i32 0, align 4
@msg_wait = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_FORCE_HB = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_HB_IF_NECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_ipmi_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ipmi_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @watchdog_user, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = call i32 @atomic_set(i32* @msg_tofree, i32 2)
  %13 = call i32 @__ipmi_set_timeout(i32* @smi_msg, i32* @recv_msg, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %11
  %19 = call i32 @wait_for_completion(i32* @msg_wait)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IPMI_SET_TIMEOUT_FORCE_HB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IPMI_SET_TIMEOUT_HB_IF_NECESSARY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %18
  %31 = call i32 (...) @__ipmi_heartbeat()
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %26, %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %16, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__ipmi_set_timeout(i32*, i32*, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @__ipmi_heartbeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
