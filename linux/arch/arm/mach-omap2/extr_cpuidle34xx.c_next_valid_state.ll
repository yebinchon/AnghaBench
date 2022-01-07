; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_next_valid_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cpuidle34xx.c_next_valid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_idle_statedata = type { i64, i64 }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@omap3_idle_data = common dso_local global %struct.omap3_idle_statedata* null, align 8
@PWRDM_POWER_RET = common dso_local global i64 0, align 8
@enable_off_mode = common dso_local global i64 0, align 8
@PWRDM_POWER_OFF = common dso_local global i64 0, align 8
@PM_SDRC_WAKEUP_ERRATUM_i583 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @next_valid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_valid_state(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap3_idle_statedata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** @omap3_idle_data, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %13, i64 %15
  store %struct.omap3_idle_statedata* %16, %struct.omap3_idle_statedata** %8, align 8
  %17 = load i64, i64* @PWRDM_POWER_RET, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @PWRDM_POWER_RET, align 8
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* @enable_off_mode, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i64, i64* @PWRDM_POWER_OFF, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @PM_SDRC_WAKEUP_ERRATUM_i583, align 4
  %24 = call i32 @IS_PM34XX_ERRATUM(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @PWRDM_POWER_OFF, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %8, align 8
  %31 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %8, align 8
  %37 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %35, %29
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %68, %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** @omap3_idle_data, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %50, i64 %52
  store %struct.omap3_idle_statedata* %53, %struct.omap3_idle_statedata** %8, align 8
  %54 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %8, align 8
  %55 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.omap3_idle_statedata*, %struct.omap3_idle_statedata** %8, align 8
  %61 = getelementptr inbounds %struct.omap3_idle_statedata, %struct.omap3_idle_statedata* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %12, align 4
  br label %71

67:                                               ; preds = %59, %49
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %46

71:                                               ; preds = %65, %46
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %41
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @IS_PM34XX_ERRATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
