; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: sig: %ld [#%d]%s\0A\00", align 1
@CONFIG_PREEMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" PREEMPT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
  %7 = call i32 (...) @console_verbose()
  %8 = call i32 @spin_lock_irq(i32* @die_lock)
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @die.die_counter, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @die.die_counter, align 4
  %13 = load i32, i32* @CONFIG_PREEMPT, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10, i32 %12, i8* %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = call i32 @show_regs(%struct.pt_regs* %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = call i32 @user_mode(%struct.pt_regs* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  %31 = call i32 @show_stack(i32* null, i64* %30)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* @TAINT_DIE, align 4
  %34 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %35 = call i32 @add_taint(i32 %33, i32 %34)
  %36 = call i32 @spin_unlock_irq(i32* @die_lock)
  %37 = call i64 (...) @in_interrupt()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i64, i64* @panic_on_oops, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @do_exit(i64 %47)
  ret void
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_info(i8*, i8*, i64, i32, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @show_stack(i32*, i64*) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @do_exit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
