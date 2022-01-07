; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i8*, i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Internal error: %s: %x [#%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CPU: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Process %s (pid: %d, stack limit = 0x%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %7, align 8
  %9 = call i32 (...) @console_verbose()
  %10 = call i32 @spin_lock_irq(i32* @die_lock)
  %11 = call i32 @bust_spinlocks(i32 1)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @die.die_counter, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @die.die_counter, align 4
  %16 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i32 %15)
  %17 = call i32 (...) @print_modules()
  %18 = call i32 (...) @smp_processor_id()
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %23 = call i32 @show_regs(%struct.pt_regs* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %31 = call i32 @end_of_stack(%struct.task_struct* %30)
  %32 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %29, i32 %31)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = call i32 @user_mode(%struct.pt_regs* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = call i64 (...) @in_interrupt()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36, %3
  %40 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @PAGE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @dump_mem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %49)
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = call i32 @dump_instr(%struct.pt_regs* %51)
  %53 = call i32 (...) @dump_stack()
  br label %54

54:                                               ; preds = %39, %36
  %55 = call i32 @bust_spinlocks(i32 0)
  %56 = call i32 @spin_unlock_irq(i32* @die_lock)
  %57 = load i32, i32* @SIGSEGV, align 4
  %58 = call i32 @do_exit(i32 %57)
  ret void
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @pr_emerg(i8*, i8*, ...) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @end_of_stack(%struct.task_struct*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @dump_mem(i8*, i32, i32) #1

declare dso_local i32 @dump_instr(%struct.pt_regs*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
