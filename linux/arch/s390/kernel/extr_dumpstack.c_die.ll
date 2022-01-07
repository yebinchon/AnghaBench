; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: %04x ilc:%d [#%d] \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SMP \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DEBUG_PAGEALLOC\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DIE_OOPS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Fatal exception: panic_on_oops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(%struct.pt_regs* %0, i8* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @oops_enter()
  %6 = call i32 (...) @lgr_info_log()
  %7 = call i32 (...) @debug_stop_all()
  %8 = call i32 (...) @console_verbose()
  %9 = call i32 @spin_lock_irq(i32* @die_lock)
  %10 = call i32 @bust_spinlocks(i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65535
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 17
  %20 = load i32, i32* @die.die_counter, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @die.die_counter, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %15, i32 %19, i32 %21)
  %23 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i64 (...) @debug_pagealloc_enabled()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %2
  %29 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @DIE_OOPS, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65535
  %37 = load i32, i32* @SIGSEGV, align 4
  %38 = call i32 @notify_die(i32 %30, i8* %31, %struct.pt_regs* %32, i32 0, i32 %36, i32 %37)
  %39 = call i32 (...) @print_modules()
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = call i32 @show_regs(%struct.pt_regs* %40)
  %42 = call i32 @bust_spinlocks(i32 0)
  %43 = load i32, i32* @TAINT_DIE, align 4
  %44 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %45 = call i32 @add_taint(i32 %43, i32 %44)
  %46 = call i32 @spin_unlock_irq(i32* @die_lock)
  %47 = call i64 (...) @in_interrupt()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %28
  %52 = load i64, i64* @panic_on_oops, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = call i32 (...) @oops_exit()
  %58 = load i32, i32* @SIGSEGV, align 4
  %59 = call i32 @do_exit(i32 %58)
  ret void
}

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @lgr_info_log(...) #1

declare dso_local i32 @debug_stop_all(...) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @printk(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i64 @debug_pagealloc_enabled(...) #1

declare dso_local i32 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
