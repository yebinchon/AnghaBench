; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap_sram_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap_sram_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpu_pwrdm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid mpu state in sram_idle\0A\00", align 1
@neon_pwrdm = common dso_local global i32 0, align 4
@per_pwrdm = common dso_local global i32 0, align 4
@core_pwrdm = common dso_local global i32 0, align 4
@OMAP3430_REV_ES3_0 = common dso_local global i64 0, align 8
@OMAP2_DEVICE_TYPE_EMU = common dso_local global i64 0, align 8
@OMAP2_DEVICE_TYPE_SEC = common dso_local global i64 0, align 8
@SDRC_POWER = common dso_local global i32 0, align 4
@omap3_arm_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_sram_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 129, i32* %2, align 4
  store i32 129, i32* %3, align 4
  store i32 129, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @mpu_pwrdm, align 4
  %7 = call i32 @pwrdm_read_next_pwrst(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %11 [
    i32 129, label %9
    i32 128, label %9
    i32 130, label %10
  ]

9:                                                ; preds = %0, %0
  store i32 0, i32* %1, align 4
  br label %13

10:                                               ; preds = %0
  store i32 3, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %125

13:                                               ; preds = %10, %9
  %14 = load i32, i32* @neon_pwrdm, align 4
  %15 = call i32 @pwrdm_read_pwrst(i32 %14)
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @neon_pwrdm, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pwrdm_set_next_pwrst(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @per_pwrdm, align 4
  %23 = call i32 @pwrdm_read_next_pwrst(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @core_pwrdm, align 4
  %25 = call i32 @pwrdm_read_next_pwrst(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 @pwrdm_pre_transition(i32* null)
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (...) @cpu_cluster_pm_enter()
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 129
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 (...) @omap3_core_save_context()
  %39 = call i32 (...) @omap3_cm_save_context()
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @omap3_vc_set_pmic_signaling(i32 %42)
  %44 = call i32 (...) @omap3_intc_prepare_idle()
  %45 = call i64 (...) @cpu_is_omap3430()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = call i64 (...) @omap_rev()
  %49 = load i64, i64* @OMAP3430_REV_ES3_0, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = call i64 (...) @omap_type()
  %53 = load i64, i64* @OMAP2_DEVICE_TYPE_EMU, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = call i64 (...) @omap_type()
  %57 = load i64, i64* @OMAP2_DEVICE_TYPE_SEC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 130
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @SDRC_POWER, align 4
  %64 = call i32 @sdrc_read_reg(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %59, %55, %47, %41
  %66 = load i32, i32* %1, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @omap3_arm_context, align 4
  %70 = call i32 @omap34xx_save_context(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %1, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %1, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @cpu_suspend(i32 %78, i32 (i32)* @omap34xx_do_sram_idle)
  br label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @omap34xx_do_sram_idle(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = call i64 (...) @cpu_is_omap3430()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = call i64 (...) @omap_rev()
  %88 = load i64, i64* @OMAP3430_REV_ES3_0, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = call i64 (...) @omap_type()
  %92 = load i64, i64* @OMAP2_DEVICE_TYPE_EMU, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = call i64 (...) @omap_type()
  %96 = load i64, i64* @OMAP2_DEVICE_TYPE_SEC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @SDRC_POWER, align 4
  %104 = call i32 @sdrc_write_reg(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %98, %94, %86, %83
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 129
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* @core_pwrdm, align 4
  %110 = call i32 @pwrdm_read_prev_pwrst(i32 %109)
  %111 = icmp eq i32 %110, 130
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = call i32 (...) @omap3_core_restore_context()
  %114 = call i32 (...) @omap3_cm_restore_context()
  %115 = call i32 (...) @omap3_sram_restore_context()
  %116 = call i32 (...) @omap2_sms_restore_context()
  br label %119

117:                                              ; preds = %108, %105
  %118 = call i32 (...) @omap3_intc_resume_idle()
  br label %119

119:                                              ; preds = %117, %112
  %120 = call i32 @pwrdm_post_transition(i32* null)
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, 130
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (...) @cpu_cluster_pm_exit()
  br label %125

125:                                              ; preds = %11, %123, %119
  ret void
}

declare dso_local i32 @pwrdm_read_next_pwrst(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pwrdm_read_pwrst(i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(i32, i32) #1

declare dso_local i32 @pwrdm_pre_transition(i32*) #1

declare dso_local i32 @cpu_cluster_pm_enter(...) #1

declare dso_local i32 @omap3_core_save_context(...) #1

declare dso_local i32 @omap3_cm_save_context(...) #1

declare dso_local i32 @omap3_vc_set_pmic_signaling(i32) #1

declare dso_local i32 @omap3_intc_prepare_idle(...) #1

declare dso_local i64 @cpu_is_omap3430(...) #1

declare dso_local i64 @omap_rev(...) #1

declare dso_local i64 @omap_type(...) #1

declare dso_local i32 @sdrc_read_reg(i32) #1

declare dso_local i32 @omap34xx_save_context(i32) #1

declare dso_local i32 @cpu_suspend(i32, i32 (i32)*) #1

declare dso_local i32 @omap34xx_do_sram_idle(i32) #1

declare dso_local i32 @sdrc_write_reg(i32, i32) #1

declare dso_local i32 @pwrdm_read_prev_pwrst(i32) #1

declare dso_local i32 @omap3_core_restore_context(...) #1

declare dso_local i32 @omap3_cm_restore_context(...) #1

declare dso_local i32 @omap3_sram_restore_context(...) #1

declare dso_local i32 @omap2_sms_restore_context(...) #1

declare dso_local i32 @omap3_intc_resume_idle(...) #1

declare dso_local i32 @pwrdm_post_transition(i32*) #1

declare dso_local i32 @cpu_cluster_pm_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
