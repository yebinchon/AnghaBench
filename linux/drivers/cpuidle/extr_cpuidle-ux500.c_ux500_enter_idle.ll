; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-ux500.c_ux500_enter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-ux500.c_ux500_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@master = common dso_local global i32 0, align 4
@master_lock = common dso_local global i32 0, align 4
@PRCMU_AP_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @ux500_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_enter_idle(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i64 @atomic_inc_return(i32* @master)
  %11 = call i64 (...) @num_online_cpus()
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = call i32 @spin_trylock(i32* @master_lock)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %50

17:                                               ; preds = %13
  %18 = call i64 (...) @prcmu_gic_decouple()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @spin_unlock(i32* @master_lock)
  br label %52

22:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = call i32 @prcmu_is_cpu_in_wfi(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %52

30:                                               ; preds = %22
  %31 = call i64 (...) @prcmu_copy_gic_settings()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %52

34:                                               ; preds = %30
  %35 = call i64 (...) @prcmu_gic_pending_irq()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %52

38:                                               ; preds = %34
  %39 = call i64 (...) @prcmu_pending_irq()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @PRCMU_AP_IDLE, align 4
  %44 = call i64 @prcmu_set_power_state(i32 %43, i32 1, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  %48 = call i32 @spin_unlock(i32* @master_lock)
  br label %49

49:                                               ; preds = %47, %3
  br label %50

50:                                               ; preds = %49, %16
  %51 = call i32 (...) @cpu_do_idle()
  br label %52

52:                                               ; preds = %50, %46, %41, %37, %33, %29, %20
  %53 = call i32 @atomic_dec(i32* @master)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 (...) @prcmu_gic_recouple()
  %58 = call i32 @spin_unlock(i32* @master_lock)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i64 @prcmu_gic_decouple(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @prcmu_is_cpu_in_wfi(i32) #1

declare dso_local i64 @prcmu_copy_gic_settings(...) #1

declare dso_local i64 @prcmu_gic_pending_irq(...) #1

declare dso_local i64 @prcmu_pending_irq(...) #1

declare dso_local i64 @prcmu_set_power_state(i32, i32, i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @prcmu_gic_recouple(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
