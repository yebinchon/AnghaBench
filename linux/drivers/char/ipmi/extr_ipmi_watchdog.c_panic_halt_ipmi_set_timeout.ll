; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_panic_halt_ipmi_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_panic_halt_ipmi_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@panic_done_count = common dso_local global i32 0, align 4
@watchdog_user = common dso_local global i32 0, align 4
@panic_halt_smi_msg = common dso_local global i32 0, align 4
@panic_halt_recv_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to extend the watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @panic_halt_ipmi_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_halt_ipmi_set_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = call i64 @atomic_read(i32* @panic_done_count)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, i32* @watchdog_user, align 4
  %8 = call i32 @ipmi_poll_interface(i32 %7)
  br label %3

9:                                                ; preds = %3
  %10 = call i32 @atomic_add(i32 1, i32* @panic_done_count)
  %11 = call i32 @__ipmi_set_timeout(i32* @panic_halt_smi_msg, i32* @panic_halt_recv_msg, i32* %1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = call i32 @atomic_sub(i32 1, i32* @panic_done_count)
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %23

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @panic_halt_ipmi_heartbeat()
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %27, %23
  %25 = call i64 @atomic_read(i32* @panic_done_count)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @watchdog_user, align 4
  %29 = call i32 @ipmi_poll_interface(i32 %28)
  br label %24

30:                                               ; preds = %24
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ipmi_poll_interface(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @__ipmi_set_timeout(i32*, i32*, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @panic_halt_ipmi_heartbeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
