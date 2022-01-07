; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s [#%d]\0A\00", align 1
@DIE_OOPS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@NOTIFY_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(%struct.pt_regs* %0, i8* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @oops_enter()
  %7 = call i32 @spin_lock_irq(i32* @die_lock)
  %8 = call i32 (...) @console_verbose()
  %9 = call i32 @bust_spinlocks(i32 1)
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @die.die_counter, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @die.die_counter, align 4
  %13 = call i32 @pr_emerg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %12)
  %14 = call i32 (...) @print_modules()
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = call i32 @show_regs(%struct.pt_regs* %15)
  %17 = load i32, i32* @DIE_OOPS, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIGSEGV, align 4
  %24 = call i32 @notify_die(i32 %17, i8* %18, %struct.pt_regs* %19, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = call i32 @bust_spinlocks(i32 0)
  %26 = load i32, i32* @TAINT_DIE, align 4
  %27 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %28 = call i32 @add_taint(i32 %26, i32 %27)
  %29 = call i32 @spin_unlock_irq(i32* @die_lock)
  %30 = call i32 (...) @oops_exit()
  %31 = call i64 (...) @in_interrupt()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %2
  %36 = load i64, i64* @panic_on_oops, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NOTIFY_STOP, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @SIGSEGV, align 4
  %46 = call i32 @do_exit(i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @pr_emerg(i8*, i8*, i32) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
