; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_panel_scan_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_panel_scan_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.timer_list = type { i32 }

@keypad = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@keypad_initialized = common dso_local global i64 0, align 8
@pprt_lock = common dso_local global i32 0, align 4
@inputs_stable = common dso_local global i32 0, align 4
@phys_curr = common dso_local global i64 0, align 8
@phys_prev = common dso_local global i64 0, align 8
@keypressed = common dso_local global i64 0, align 8
@lcd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@scan_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INPUT_POLL_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @panel_scan_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panel_scan_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @keypad, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i64, i64* @keypad_initialized, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = call i64 @spin_trylock_irq(i32* @pprt_lock)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 (...) @phys_scan_contacts()
  %13 = call i32 @spin_unlock_irq(i32* @pprt_lock)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @inputs_stable, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* @phys_curr, align 8
  %19 = load i64, i64* @phys_prev, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %14
  %22 = call i32 (...) @panel_process_inputs()
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %23, %5, %1
  %25 = load i64, i64* @keypressed, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lcd, i32 0, i32 2), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lcd, i32 0, i32 1), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lcd, i32 0, i32 0), align 8
  %35 = call i32 @charlcd_poke(i32 %34)
  br label %36

36:                                               ; preds = %33, %30, %27, %24
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* @INPUT_POLL_TIME, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @mod_timer(i32* @scan_timer, i64 %39)
  ret void
}

declare dso_local i64 @spin_trylock_irq(i32*) #1

declare dso_local i32 @phys_scan_contacts(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @panel_process_inputs(...) #1

declare dso_local i32 @charlcd_poke(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
