; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_state_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_state_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PWRDM_POWER_RET = common dso_local global i32 0, align 4
@PWRDM_TRACE_STATES_FLAG = common dso_local global i32 0, align 4
@OMAP_POWERSTATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*, i32)* @_pwrdm_state_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pwrdm_state_switch(%struct.powerdomain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %11 = icmp eq %struct.powerdomain* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %17 = call i32 @pwrdm_read_pwrst(%struct.powerdomain* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %72 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %15
  %20 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %21 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %75

23:                                               ; preds = %15
  %24 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %25 = call i32 @pwrdm_read_prev_pwrst(%struct.powerdomain* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %27 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %33 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %23
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PWRDM_POWER_RET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %46 = call i32 @_update_logic_membank_counters(%struct.powerdomain* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %49 = call i32 @pwrdm_read_next_pwrst(%struct.powerdomain* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load i32, i32* @PWRDM_TRACE_STATES_FLAG, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @OMAP_POWERSTATE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @OMAP_POWERSTATE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = shl i32 %62, 0
  %64 = or i32 %59, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %66 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (...) @raw_smp_processor_id()
  %70 = call i32 @trace_power_domain_target_rcuidle(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %53, %47
  br label %75

72:                                               ; preds = %15
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %71, %19
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %81 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %79, %75
  %89 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @pm_dbg_update_time(%struct.powerdomain* %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %94 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %72, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @pwrdm_read_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @pwrdm_read_prev_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @_update_logic_membank_counters(%struct.powerdomain*) #1

declare dso_local i32 @pwrdm_read_next_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @trace_power_domain_target_rcuidle(i32, i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @pm_dbg_update_time(%struct.powerdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
