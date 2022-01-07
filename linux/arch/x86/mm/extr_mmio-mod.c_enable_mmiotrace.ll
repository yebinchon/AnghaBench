; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmio-mod.c_enable_mmiotrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmio-mod.c_enable_mmiotrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmiotrace_mutex = common dso_local global i32 0, align 4
@nommiotrace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"MMIO tracing disabled.\0A\00", align 1
@trace_lock = common dso_local global i32 0, align 4
@mmiotrace_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"enabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_mmiotrace() #0 {
  %1 = call i32 @mutex_lock(i32* @mmiotrace_mutex)
  %2 = call i64 (...) @is_enabled()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = load i64, i64* @nommiotrace, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %5
  %11 = call i32 (...) @kmmio_init()
  %12 = call i32 (...) @enter_uniprocessor()
  %13 = call i32 @spin_lock_irq(i32* @trace_lock)
  %14 = call i32 @atomic_inc(i32* @mmiotrace_enabled)
  %15 = call i32 @spin_unlock_irq(i32* @trace_lock)
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %10, %4
  %18 = call i32 @mutex_unlock(i32* @mmiotrace_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_enabled(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kmmio_init(...) #1

declare dso_local i32 @enter_uniprocessor(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
