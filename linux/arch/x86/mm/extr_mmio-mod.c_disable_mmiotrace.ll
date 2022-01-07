; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmio-mod.c_disable_mmiotrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmio-mod.c_disable_mmiotrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmiotrace_mutex = common dso_local global i32 0, align 4
@trace_lock = common dso_local global i32 0, align 4
@mmiotrace_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"disabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_mmiotrace() #0 {
  %1 = call i32 @mutex_lock(i32* @mmiotrace_mutex)
  %2 = call i32 (...) @is_enabled()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %15

5:                                                ; preds = %0
  %6 = call i32 @spin_lock_irq(i32* @trace_lock)
  %7 = call i32 @atomic_dec(i32* @mmiotrace_enabled)
  %8 = call i32 (...) @is_enabled()
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = call i32 @spin_unlock_irq(i32* @trace_lock)
  %11 = call i32 (...) @clear_trace_list()
  %12 = call i32 (...) @leave_uniprocessor()
  %13 = call i32 (...) @kmmio_cleanup()
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %5, %4
  %16 = call i32 @mutex_unlock(i32* @mmiotrace_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_enabled(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_trace_list(...) #1

declare dso_local i32 @leave_uniprocessor(...) #1

declare dso_local i32 @kmmio_cleanup(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
