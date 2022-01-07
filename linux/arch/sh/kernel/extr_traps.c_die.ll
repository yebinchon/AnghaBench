; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.pt_regs = type { i32* }

@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: %04lx [#%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Process: %s (pid: %d, stack limit = %p)\0A\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@THREAD_SIZE = common dso_local global i64 0, align 8
@DIE_OOPS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @oops_enter()
  %8 = call i32 @spin_lock_irq(i32* @die_lock)
  %9 = call i32 (...) @console_verbose()
  %10 = call i32 @bust_spinlocks(i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = and i64 %12, 65535
  %14 = load i32, i32* @die.die_counter, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @die.die_counter, align 4
  %16 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11, i64 %13, i32 %15)
  %17 = call i32 (...) @print_modules()
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = call i32 @show_regs(%struct.pt_regs* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %24 = call i64 @task_pid_nr(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %26 = call i32 @task_stack_page(%struct.TYPE_5__* %25)
  %27 = add nsw i32 %26, 1
  %28 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %22, i64 %24, i32 %27)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %30 = call i32 @user_mode(%struct.pt_regs* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = call i64 (...) @in_interrupt()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32, %3
  %36 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 15
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @THREAD_SIZE, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %43 = call i32 @task_stack_page(%struct.TYPE_5__* %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 %41, %44
  %46 = call i32 @dump_mem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %35, %32
  %48 = load i32, i32* @DIE_OOPS, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @SIGSEGV, align 4
  %53 = call i32 @notify_die(i32 %48, i8* %49, %struct.pt_regs* %50, i64 %51, i32 255, i32 %52)
  %54 = call i32 @bust_spinlocks(i32 0)
  %55 = load i32, i32* @TAINT_DIE, align 4
  %56 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %57 = call i32 @add_taint(i32 %55, i32 %56)
  %58 = call i32 @spin_unlock_irq(i32* @die_lock)
  %59 = call i32 (...) @oops_exit()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %61 = call i64 @kexec_should_crash(%struct.TYPE_5__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %65 = call i32 @crash_kexec(%struct.pt_regs* %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = call i64 (...) @in_interrupt()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i64, i64* @panic_on_oops, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* @SIGSEGV, align 4
  %78 = call i32 @do_exit(i32 %77)
  ret void
}

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @printk(i8*, i8*, i64, i32) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i64 @task_pid_nr(%struct.TYPE_5__*) #1

declare dso_local i32 @task_stack_page(%struct.TYPE_5__*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @dump_mem(i8*, i32, i64) #1

declare dso_local i32 @notify_die(i32, i8*, %struct.pt_regs*, i64, i32, i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i64 @kexec_should_crash(%struct.TYPE_5__*) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
