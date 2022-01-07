; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_oops_begin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_oops_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@die_lock = common dso_local global i32 0, align 4
@die_owner = common dso_local global i32 0, align 4
@die_nest_count = common dso_local global i32 0, align 4
@powermac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*)* @oops_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @oops_begin(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = call i32 (...) @oops_enter()
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @raw_local_irq_save(i64 %6)
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %3, align 4
  %9 = call i32 @arch_spin_trylock(i32* @die_lock)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @die_owner, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %18

16:                                               ; preds = %11
  %17 = call i32 @arch_spin_lock(i32* @die_lock)
  br label %18

18:                                               ; preds = %16, %15
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @die_nest_count, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @die_nest_count, align 4
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* @die_owner, align 4
  %23 = call i32 (...) @console_verbose()
  %24 = call i32 @bust_spinlocks(i32 1)
  %25 = load i32, i32* @powermac, align 4
  %26 = call i64 @machine_is(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @pmac_backlight_unblank()
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @arch_spin_trylock(i32*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i64 @machine_is(i32) #1

declare dso_local i32 @pmac_backlight_unblank(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
