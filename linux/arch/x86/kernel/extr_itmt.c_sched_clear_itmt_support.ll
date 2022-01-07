; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_itmt.c_sched_clear_itmt_support.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_itmt.c_sched_clear_itmt_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itmt_update_mutex = common dso_local global i32 0, align 4
@sched_itmt_capable = common dso_local global i32 0, align 4
@itmt_sysctl_header = common dso_local global i32* null, align 8
@sysctl_sched_itmt_enabled = common dso_local global i64 0, align 8
@x86_topology_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_clear_itmt_support() #0 {
  %1 = call i32 @mutex_lock(i32* @itmt_update_mutex)
  %2 = load i32, i32* @sched_itmt_capable, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @mutex_unlock(i32* @itmt_update_mutex)
  br label %19

6:                                                ; preds = %0
  store i32 0, i32* @sched_itmt_capable, align 4
  %7 = load i32*, i32** @itmt_sysctl_header, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @itmt_sysctl_header, align 8
  %11 = call i32 @unregister_sysctl_table(i32* %10)
  store i32* null, i32** @itmt_sysctl_header, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @sysctl_sched_itmt_enabled, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  store i64 0, i64* @sysctl_sched_itmt_enabled, align 8
  store i32 1, i32* @x86_topology_update, align 4
  %16 = call i32 (...) @rebuild_sched_domains()
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 @mutex_unlock(i32* @itmt_update_mutex)
  br label %19

19:                                               ; preds = %17, %4
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unregister_sysctl_table(i32*) #1

declare dso_local i32 @rebuild_sched_domains(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
