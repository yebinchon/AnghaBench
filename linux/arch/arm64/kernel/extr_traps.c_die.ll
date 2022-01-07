; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@die_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@NOTIFY_STOP = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @die_lock, i64 %9)
  %11 = call i32 (...) @oops_enter()
  %12 = call i32 (...) @console_verbose()
  %13 = call i32 @bust_spinlocks(i32 1)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %17 = call i32 @__die(i8* %14, i32 %15, %struct.pt_regs* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = icmp ne %struct.pt_regs* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @current, align 4
  %22 = call i64 @kexec_should_crash(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %26 = call i32 @crash_kexec(%struct.pt_regs* %25)
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = call i32 @bust_spinlocks(i32 0)
  %29 = load i32, i32* @TAINT_DIE, align 4
  %30 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %31 = call i32 @add_taint(i32 %29, i32 %30)
  %32 = call i32 (...) @oops_exit()
  %33 = call i64 (...) @in_interrupt()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i64, i64* @panic_on_oops, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* @die_lock, i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NOTIFY_STOP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @SIGSEGV, align 4
  %50 = call i32 @do_exit(i32 %49)
  br label %51

51:                                               ; preds = %48, %42
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @__die(i8*, i32, %struct.pt_regs*) #1

declare dso_local i64 @kexec_should_crash(i32) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
