; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vc.c_omap3_vc_set_pmic_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vc.c_omap3_vc_set_pmic_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, %struct.omap3_vc_timings*, %struct.voltagedomain* }
%struct.omap3_vc_timings = type { i64, i64 }
%struct.voltagedomain = type { i32 (i64, i32)* }

@vc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OMAP3430_PRM_VOLTCTRL_AUTO_RET = common dso_local global i64 0, align 8
@OMAP3430_PRM_VOLTCTRL_AUTO_SLEEP = common dso_local global i64 0, align 8
@OMAP3430_PRM_VOLTCTRL_AUTO_OFF = common dso_local global i64 0, align 8
@OMAP3430_PRM_VOLTCTRL_SEL_OFF = common dso_local global i64 0, align 8
@OMAP3_PRM_VOLTCTRL_OFFSET = common dso_local global i32 0, align 4
@OMAP3_PRM_VOLTSETUP1_OFFSET = common dso_local global i32 0, align 4
@OMAP3_PRM_VOLTSETUP2_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_vc_set_pmic_signaling(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.voltagedomain*, align 8
  %4 = alloca %struct.omap3_vc_timings*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.voltagedomain*, %struct.voltagedomain** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 4), align 8
  store %struct.voltagedomain* %8, %struct.voltagedomain** %3, align 8
  %9 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 3), align 8
  store %struct.omap3_vc_timings* %9, %struct.omap3_vc_timings** %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 0), align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 1), align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 2), align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 128, label %37
  ]

14:                                               ; preds = %1
  %15 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_RET, align 8
  %16 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_SLEEP, align 8
  %17 = or i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_OFF, align 8
  %22 = load i64, i64* %5, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_SEL_OFF, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %30 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %36

32:                                               ; preds = %14
  %33 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %34 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %53

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %1, %37
  %39 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %40 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %39, i32 1
  store %struct.omap3_vc_timings* %40, %struct.omap3_vc_timings** %4, align 8
  %41 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_OFF, align 8
  %42 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_SLEEP, align 8
  %43 = or i64 %41, %42
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* @OMAP3430_PRM_VOLTCTRL_AUTO_RET, align 8
  %48 = load i64, i64* %5, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %5, align 8
  %50 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %51 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %38, %36
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 0), align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %59 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %58, i32 0, i32 0
  %60 = load i32 (i64, i32)*, i32 (i64, i32)** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* @OMAP3_PRM_VOLTCTRL_OFFSET, align 4
  %63 = call i32 %60(i64 %61, i32 %62)
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 0), align 8
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 1), align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %71 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %70, i32 0, i32 0
  %72 = load i32 (i64, i32)*, i32 (i64, i32)** %71, align 8
  %73 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %74 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @OMAP3_PRM_VOLTSETUP1_OFFSET, align 4
  %77 = call i32 %72(i64 %75, i32 %76)
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 1), align 8
  br label %79

79:                                               ; preds = %69, %65
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 2), align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %85 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %84, i32 0, i32 0
  %86 = load i32 (i64, i32)*, i32 (i64, i32)** %85, align 8
  %87 = load %struct.omap3_vc_timings*, %struct.omap3_vc_timings** %4, align 8
  %88 = getelementptr inbounds %struct.omap3_vc_timings, %struct.omap3_vc_timings* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @OMAP3_PRM_VOLTSETUP2_OFFSET, align 4
  %91 = call i32 %86(i64 %89, i32 %90)
  %92 = load i64, i64* %7, align 8
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc, i32 0, i32 2), align 8
  br label %93

93:                                               ; preds = %83, %79
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
