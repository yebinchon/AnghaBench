; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle44xx.c_omap_enter_idle_smp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle44xx.c_omap_enter_idle_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idle_statedata = type { i64, i32, i32, i32 }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@state_ptr = common dso_local global %struct.idle_statedata* null, align 8
@mpu_lock = common dso_local global i32 0, align 4
@mpu_pd = common dso_local global i32 0, align 4
@PWRDM_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @omap_enter_idle_smp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_enter_idle_smp(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idle_statedata*, align 8
  %8 = alloca i64, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.idle_statedata*, %struct.idle_statedata** @state_ptr, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %9, i64 %11
  store %struct.idle_statedata* %12, %struct.idle_statedata** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* @mpu_lock, i64 %13)
  %15 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %16 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %20 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 (...) @num_online_cpus()
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @mpu_pd, align 4
  %26 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %27 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pwrdm_set_logic_retst(i32 %25, i32 %28)
  %30 = load i32, i32* @mpu_pd, align 4
  %31 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %32 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @omap_set_pwrdm_state(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @raw_spin_unlock_irqrestore(i32* @mpu_lock, i64 %36)
  %38 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %39 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %42 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @omap4_enter_lowpower(i32 %40, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @raw_spin_lock_irqsave(i32* @mpu_lock, i64 %45)
  %47 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %48 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 (...) @num_online_cpus()
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i32, i32* @mpu_pd, align 4
  %54 = load i32, i32* @PWRDM_POWER_ON, align 4
  %55 = call i32 @omap_set_pwrdm_state(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %35
  %57 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %58 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* @mpu_lock, i64 %61)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @pwrdm_set_logic_retst(i32, i32) #1

declare dso_local i32 @omap_set_pwrdm_state(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap4_enter_lowpower(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
