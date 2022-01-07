; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_oops_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_oops_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@die_nest_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@die_owner = common dso_local global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"die oops\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@panic_on_oops = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*, i32)* @oops_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oops_end(i64 %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 @bust_spinlocks(i32 0)
  %8 = load i32, i32* @TAINT_DIE, align 4
  %9 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %10 = call i32 @add_taint(i32 %8, i32 %9)
  %11 = load i32, i32* @die_nest_count, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @die_nest_count, align 4
  %13 = call i32 (...) @oops_exit()
  %14 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @die_nest_count, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  store i32 -1, i32* @die_owner, align 4
  %18 = call i32 @arch_spin_unlock(i32* @die_lock)
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @raw_local_irq_restore(i64 %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %23 = call i32 @TRAP(%struct.pt_regs* %22)
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %65

26:                                               ; preds = %19
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = call i32 @crash_fadump(%struct.pt_regs* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = call i64 @kexec_should_crash(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = call i32 @crash_kexec(%struct.pt_regs* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %65

39:                                               ; preds = %35
  %40 = call i64 (...) @in_interrupt()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @panic_on_oops, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %52 = call i64 @is_global_init(%struct.TYPE_4__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %45, %42, %39
  %55 = load i32, i32* @MSEC_PER_SEC, align 4
  %56 = call i32 @mdelay(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i64, i64* @panic_on_oops, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @do_exit(i32 %63)
  br label %65

65:                                               ; preds = %62, %38, %25
  ret void
}

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @TRAP(%struct.pt_regs*) #1

declare dso_local i32 @crash_fadump(%struct.pt_regs*, i8*) #1

declare dso_local i64 @kexec_should_crash(%struct.TYPE_4__*) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @is_global_init(%struct.TYPE_4__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
