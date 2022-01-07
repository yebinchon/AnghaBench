; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_omap3_enter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_omap3_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_idle_statedata = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@omap3_idle_data = common dso_local global %struct.omap3_idle_statedata* null, align 8
@OMAP_CPUIDLE_CX_NO_CLKDM_IDLE = common dso_local global i32 0, align 4
@mpu_pd = common dso_local global %struct.TYPE_5__* null, align 8
@core_pd = common dso_local global %struct.TYPE_5__* null, align 8
@PWRDM_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @omap3_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_enter_idle(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap3_idle_statedata*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** @omap3_idle_data, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %8, i64 %10
  store %struct.omap3_idle_statedata* %11, %struct.omap3_idle_statedata** %7, align 8
  %12 = call i64 (...) @omap_irq_pending()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i64 (...) @need_resched()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  br label %80

18:                                               ; preds = %14
  %19 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %20 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OMAP_CPUIDLE_CX_NO_CLKDM_IDLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mpu_pd, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clkdm_deny_idle(i32 %30)
  br label %43

32:                                               ; preds = %18
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mpu_pd, align 8
  %34 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %35 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pwrdm_set_next_pwrst(%struct.TYPE_5__* %33, i64 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @core_pd, align 8
  %39 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %40 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pwrdm_set_next_pwrst(%struct.TYPE_5__* %38, i64 %41)
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %45 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @cpu_pm_enter()
  br label %51

51:                                               ; preds = %49, %43
  %52 = call i32 (...) @omap_sram_idle()
  %53 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %54 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mpu_pd, align 8
  %60 = call i64 @pwrdm_read_prev_pwrst(%struct.TYPE_5__* %59)
  %61 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @cpu_pm_exit()
  br label %65

65:                                               ; preds = %63, %58, %51
  %66 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %7, align 8
  %67 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OMAP_CPUIDLE_CX_NO_CLKDM_IDLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mpu_pd, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clkdm_allow_idle(i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %17
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @omap_irq_pending(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @clkdm_deny_idle(i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @cpu_pm_enter(...) #1

declare dso_local i32 @omap_sram_idle(...) #1

declare dso_local i64 @pwrdm_read_prev_pwrst(%struct.TYPE_5__*) #1

declare dso_local i32 @cpu_pm_exit(...) #1

declare dso_local i32 @clkdm_allow_idle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
