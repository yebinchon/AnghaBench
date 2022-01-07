; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_oops_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_oops_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@current = common dso_local global i32 0, align 4
@die_owner = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@die_nest_count = common dso_local global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@exec_summary_regs = common dso_local global i32 0, align 4
@SHOW_REGS_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oops_end(i64 %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %8 = icmp ne %struct.pt_regs* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i32, i32* @current, align 4
  %11 = call i64 @kexec_should_crash(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %15 = call i32 @crash_kexec(%struct.pt_regs* %14)
  br label %16

16:                                               ; preds = %13, %9, %3
  %17 = call i32 @bust_spinlocks(i32 0)
  store i32 -1, i32* @die_owner, align 4
  %18 = load i32, i32* @TAINT_DIE, align 4
  %19 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %20 = call i32 @add_taint(i32 %18, i32 %19)
  %21 = load i32, i32* @die_nest_count, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @die_nest_count, align 4
  %23 = load i32, i32* @die_nest_count, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = call i32 @arch_spin_unlock(i32* @die_lock)
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @raw_local_irq_restore(i64 %28)
  %30 = call i32 (...) @oops_exit()
  %31 = load i32, i32* @SHOW_REGS_ALL, align 4
  %32 = call i32 @__show_regs(i32* @exec_summary_regs, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27
  %37 = call i64 (...) @in_interrupt()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* @panic_on_oops, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* @current, align 4
  %48 = call i32 @kasan_unpoison_task_stack(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @rewind_stack_do_exit(i32 %49)
  br label %51

51:                                               ; preds = %46, %35
  ret void
}

declare dso_local i64 @kexec_should_crash(i32) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i32 @__show_regs(i32*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kasan_unpoison_task_stack(i32) #1

declare dso_local i32 @rewind_stack_do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
