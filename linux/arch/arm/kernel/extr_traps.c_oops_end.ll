; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_oops_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_oops_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@current = common dso_local global i32 0, align 4
@die_owner = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@die_nest_count = common dso_local global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*, i32)* @oops_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oops_end(i64 %0, %struct.pt_regs* %1, i32 %2) #0 {
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
  %31 = call i64 (...) @in_interrupt()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i64, i64* @panic_on_oops, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @do_exit(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  ret void
}

declare dso_local i64 @kexec_should_crash(i32) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

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
