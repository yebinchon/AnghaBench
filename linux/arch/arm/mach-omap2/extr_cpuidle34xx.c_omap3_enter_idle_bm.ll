; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_omap3_enter_idle_bm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_omap3_enter_idle_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_idle_statedata = type { i64 }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@cam_pd = common dso_local global i32 0, align 4
@PWRDM_POWER_ON = common dso_local global i64 0, align 8
@omap3_idle_data = common dso_local global %struct.omap3_idle_statedata* null, align 8
@per_pd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @omap3_enter_idle_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_enter_idle_bm(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.omap3_idle_statedata*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @cam_pd, align 4
  %13 = call i64 @pwrdm_read_pwrst(i32 %12)
  %14 = load i64, i64* @PWRDM_POWER_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %18 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @next_valid_state(%struct.cpuidle_device* %21, %struct.cpuidle_driver* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** @omap3_idle_data, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %26, i64 %28
  store %struct.omap3_idle_statedata* %29, %struct.omap3_idle_statedata** %11, align 8
  %30 = load i32, i32* @per_pd, align 4
  %31 = call i64 @pwrdm_read_next_pwrst(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %11, align 8
  %35 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %11, align 8
  %40 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* @per_pd, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @pwrdm_set_next_pwrst(i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %47 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @omap3_enter_idle(%struct.cpuidle_device* %46, %struct.cpuidle_driver* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @per_pd, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @pwrdm_set_next_pwrst(i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i64 @pwrdm_read_pwrst(i32) #1

declare dso_local i32 @next_valid_state(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

declare dso_local i64 @pwrdm_read_next_pwrst(i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(i32, i64) #1

declare dso_local i32 @omap3_enter_idle(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
