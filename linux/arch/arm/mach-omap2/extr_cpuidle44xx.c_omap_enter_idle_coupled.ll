; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle44xx.c_omap_enter_idle_coupled.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle44xx.c_omap_enter_idle_coupled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idle_statedata = type { i64, i64, i32 }
%struct.cpuidle_device = type { i64 }
%struct.cpuidle_driver = type { i32 }

@state_ptr = common dso_local global %struct.idle_statedata* null, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@cpu_pd = common dso_local global i32* null, align 8
@PWRDM_POWER_OFF = common dso_local global i64 0, align 8
@cpu_done = common dso_local global i32* null, align 8
@PWRDM_POWER_RET = common dso_local global i64 0, align 8
@mpu_pd = common dso_local global i32 0, align 4
@PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD = common dso_local global i32 0, align 4
@cpu_clkdm = common dso_local global i32* null, align 8
@PWRDM_POWER_ON = common dso_local global i64 0, align 8
@abort_barrier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @omap_enter_idle_coupled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_enter_idle_coupled(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idle_statedata*, align 8
  %8 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.idle_statedata*, %struct.idle_statedata** @state_ptr, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %9, i64 %11
  store %struct.idle_statedata* %12, %struct.idle_statedata** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %14 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load i32, i32* @cpu_online_mask, align 4
  %19 = call i64 @cpumask_test_cpu(i32 1, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32*, i32** @cpu_pd, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pwrdm_read_pwrst(i32 %25)
  %27 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = call i32 (...) @cpu_relax()
  %31 = load i32*, i32** @cpu_done, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %149

36:                                               ; preds = %29
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %17, %3
  %39 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %40 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PWRDM_POWER_RET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %46 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PWRDM_POWER_OFF, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ false, %38 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = call i32 (...) @tick_broadcast_enable()
  %54 = call i32 (...) @tick_broadcast_enter()
  %55 = call i32 (...) @cpu_pm_enter()
  %56 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %57 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %50
  %61 = load i32, i32* @mpu_pd, align 4
  %62 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %63 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pwrdm_set_logic_retst(i32 %61, i64 %64)
  %66 = load i32, i32* @mpu_pd, align 4
  %67 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %68 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @omap_set_pwrdm_state(i32 %66, i64 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = call i32 (...) @cpu_cluster_pm_enter()
  br label %75

75:                                               ; preds = %73, %60
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %78 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.idle_statedata*, %struct.idle_statedata** %7, align 8
  %81 = getelementptr inbounds %struct.idle_statedata, %struct.idle_statedata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @omap4_enter_lowpower(i64 %79, i32 %82)
  %84 = load i32*, i32** @cpu_done, align 8
  %85 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %86 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 1, i32* %88, align 4
  %89 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %90 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %76
  %94 = load i32, i32* @cpu_online_mask, align 4
  %95 = call i64 @cpumask_test_cpu(i32 1, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %93
  %98 = load i32, i32* @PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD, align 4
  %99 = call i64 @IS_PM44XX_ERRATUM(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (...) @gic_dist_disable()
  br label %106

106:                                              ; preds = %104, %101, %97
  %107 = load i32*, i32** @cpu_clkdm, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clkdm_deny_idle(i32 %109)
  %111 = load i32*, i32** @cpu_pd, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @PWRDM_POWER_ON, align 8
  %115 = call i32 @omap_set_pwrdm_state(i32 %113, i64 %114)
  %116 = load i32*, i32** @cpu_clkdm, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @clkdm_allow_idle(i32 %118)
  %120 = load i32, i32* @PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD, align 4
  %121 = call i64 @IS_PM44XX_ERRATUM(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %106
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %130, %126
  %128 = call i64 (...) @gic_dist_disabled()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = call i32 @udelay(i32 1)
  %132 = call i32 (...) @cpu_relax()
  br label %127

133:                                              ; preds = %127
  %134 = call i32 (...) @gic_timer_retrigger()
  br label %135

135:                                              ; preds = %133, %123, %106
  br label %136

136:                                              ; preds = %135, %93, %76
  %137 = call i32 (...) @cpu_pm_exit()
  %138 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %139 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (...) @cpu_cluster_pm_exit()
  br label %147

147:                                              ; preds = %145, %142, %136
  %148 = call i32 (...) @tick_broadcast_exit()
  br label %149

149:                                              ; preds = %147, %35
  %150 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %151 = call i32 @cpuidle_coupled_parallel_barrier(%struct.cpuidle_device* %150, i32* @abort_barrier)
  %152 = load i32*, i32** @cpu_done, align 8
  %153 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %154 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i64 @pwrdm_read_pwrst(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @tick_broadcast_enable(...) #1

declare dso_local i32 @tick_broadcast_enter(...) #1

declare dso_local i32 @cpu_pm_enter(...) #1

declare dso_local i32 @pwrdm_set_logic_retst(i32, i64) #1

declare dso_local i32 @omap_set_pwrdm_state(i32, i64) #1

declare dso_local i32 @cpu_cluster_pm_enter(...) #1

declare dso_local i32 @omap4_enter_lowpower(i64, i32) #1

declare dso_local i64 @IS_PM44XX_ERRATUM(i32) #1

declare dso_local i32 @gic_dist_disable(...) #1

declare dso_local i32 @clkdm_deny_idle(i32) #1

declare dso_local i32 @clkdm_allow_idle(i32) #1

declare dso_local i64 @gic_dist_disabled(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gic_timer_retrigger(...) #1

declare dso_local i32 @cpu_pm_exit(...) #1

declare dso_local i32 @cpu_cluster_pm_exit(...) #1

declare dso_local i32 @tick_broadcast_exit(...) #1

declare dso_local i32 @cpuidle_coupled_parallel_barrier(%struct.cpuidle_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
