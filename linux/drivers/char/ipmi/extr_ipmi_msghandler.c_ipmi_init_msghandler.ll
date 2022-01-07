; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_init_msghandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_init_msghandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipmi_interfaces_mutex = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@ipmi_interfaces_srcu = common dso_local global i32 0, align 4
@ipmi_timer = common dso_local global i32 0, align 4
@ipmi_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPMI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@panic_notifier_list = common dso_local global i32 0, align 4
@panic_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipmi_init_msghandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_init_msghandler() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(i32* @ipmi_interfaces_mutex)
  %3 = call i32 (...) @ipmi_register_driver()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %20

11:                                               ; preds = %7
  %12 = call i32 @init_srcu_struct(i32* @ipmi_interfaces_srcu)
  %13 = load i32, i32* @ipmi_timeout, align 4
  %14 = call i32 @timer_setup(i32* @ipmi_timer, i32 %13, i32 0)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @IPMI_TIMEOUT_JIFFIES, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mod_timer(i32* @ipmi_timer, i64 %17)
  %19 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, i32* @panic_block)
  store i32 1, i32* @initialized, align 4
  br label %20

20:                                               ; preds = %11, %10, %6
  %21 = call i32 @mutex_unlock(i32* @ipmi_interfaces_mutex)
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipmi_register_driver(...) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
