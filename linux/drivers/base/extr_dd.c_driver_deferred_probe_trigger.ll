; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_deferred_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_deferred_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@driver_deferred_probe_enable = common dso_local global i32 0, align 4
@deferred_probe_mutex = common dso_local global i32 0, align 4
@deferred_trigger_count = common dso_local global i32 0, align 4
@deferred_probe_pending_list = common dso_local global i32 0, align 4
@deferred_probe_active_list = common dso_local global i32 0, align 4
@deferred_probe_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @driver_deferred_probe_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @driver_deferred_probe_trigger() #0 {
  %1 = load i32, i32* @driver_deferred_probe_enable, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = call i32 @mutex_lock(i32* @deferred_probe_mutex)
  %6 = call i32 @atomic_inc(i32* @deferred_trigger_count)
  %7 = call i32 @list_splice_tail_init(i32* @deferred_probe_pending_list, i32* @deferred_probe_active_list)
  %8 = call i32 @mutex_unlock(i32* @deferred_probe_mutex)
  %9 = call i32 @schedule_work(i32* @deferred_probe_work)
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
