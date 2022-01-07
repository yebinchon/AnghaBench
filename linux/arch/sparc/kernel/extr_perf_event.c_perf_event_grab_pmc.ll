; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_event_grab_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_event_grab_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@active_events = common dso_local global i32 0, align 4
@pmc_grab_mutex = common dso_local global i32 0, align 4
@nmi_active = common dso_local global i32 0, align 4
@perf_stop_nmi_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @perf_event_grab_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_grab_pmc() #0 {
  %1 = call i64 @atomic_inc_not_zero(i32* @active_events)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %22

4:                                                ; preds = %0
  %5 = call i32 @mutex_lock(i32* @pmc_grab_mutex)
  %6 = call i64 @atomic_read(i32* @active_events)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = call i64 @atomic_read(i32* @nmi_active)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @perf_stop_nmi_watchdog, align 4
  %13 = call i32 @on_each_cpu(i32 %12, i32* null, i32 1)
  %14 = call i64 @atomic_read(i32* @nmi_active)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = call i32 @atomic_inc(i32* @active_events)
  br label %20

20:                                               ; preds = %18, %4
  %21 = call i32 @mutex_unlock(i32* @pmc_grab_mutex)
  br label %22

22:                                               ; preds = %20, %3
  ret void
}

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
