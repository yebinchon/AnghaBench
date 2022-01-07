; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3_cm_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3_cm_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@OMAP3430_IVA2_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL1 = common dso_local global i32 0, align 4
@cm_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CM_CLKSEL2 = common dso_local global i32 0, align 4
@OCP_MOD = common dso_local global i32 0, align 4
@OMAP3430_CM_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP3430ES2_SGX_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL = common dso_local global i32 0, align 4
@OMAP3430_DSS_MOD = common dso_local global i32 0, align 4
@OMAP3430_CAM_MOD = common dso_local global i32 0, align 4
@OMAP3430_PER_MOD = common dso_local global i32 0, align 4
@OMAP3430_EMU_MOD = common dso_local global i32 0, align 4
@OMAP2_CM_CLKSTCTRL = common dso_local global i32 0, align 4
@PLL_MOD = common dso_local global i32 0, align 4
@CM_AUTOIDLE = common dso_local global i32 0, align 4
@CM_AUTOIDLE2 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_CLKSEL4 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_CLKSEL5 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_CLKEN2 = common dso_local global i32 0, align 4
@OMAP3430_CM_POLCTRL = common dso_local global i32 0, align 4
@CM_FCLKEN = common dso_local global i32 0, align 4
@OMAP3430_CM_CLKEN_PLL = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_FCLKEN3 = common dso_local global i32 0, align 4
@WKUP_MOD = common dso_local global i32 0, align 4
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@CM_ICLKEN1 = common dso_local global i32 0, align 4
@CM_ICLKEN2 = common dso_local global i32 0, align 4
@CM_ICLKEN3 = common dso_local global i32 0, align 4
@CM_ICLKEN = common dso_local global i32 0, align 4
@MPU_MOD = common dso_local global i32 0, align 4
@OMAP3430_NEON_MOD = common dso_local global i32 0, align 4
@CM_AUTOIDLE1 = common dso_local global i32 0, align 4
@CM_AUTOIDLE3 = common dso_local global i32 0, align 4
@OMAP3430_CM_SLEEPDEP = common dso_local global i32 0, align 4
@OMAP3430_CCR_MOD = common dso_local global i32 0, align 4
@OMAP3_CM_CLKOUT_CTRL_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_cm_save_context() #0 {
  %1 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %2 = load i32, i32* @CM_CLKSEL1, align 4
  %3 = call i8* @omap2_cm_read_mod_reg(i32 %1, i32 %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 58), align 8
  %4 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %5 = load i32, i32* @CM_CLKSEL2, align 4
  %6 = call i8* @omap2_cm_read_mod_reg(i32 %4, i32 %5)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 57), align 8
  %7 = load i32, i32* @OCP_MOD, align 4
  %8 = load i32, i32* @OMAP3430_CM_SYSCONFIG, align 4
  %9 = call i8* @omap2_cm_read_mod_reg(i32 %7, i32 %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 56), align 8
  %10 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %11 = load i32, i32* @CM_CLKSEL, align 4
  %12 = call i8* @omap2_cm_read_mod_reg(i32 %10, i32 %11)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 55), align 8
  %13 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %14 = load i32, i32* @CM_CLKSEL, align 4
  %15 = call i8* @omap2_cm_read_mod_reg(i32 %13, i32 %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 54), align 8
  %16 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %17 = load i32, i32* @CM_CLKSEL, align 4
  %18 = call i8* @omap2_cm_read_mod_reg(i32 %16, i32 %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 53), align 8
  %19 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %20 = load i32, i32* @CM_CLKSEL, align 4
  %21 = call i8* @omap2_cm_read_mod_reg(i32 %19, i32 %20)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 52), align 8
  %22 = load i32, i32* @OMAP3430_EMU_MOD, align 4
  %23 = load i32, i32* @CM_CLKSEL1, align 4
  %24 = call i8* @omap2_cm_read_mod_reg(i32 %22, i32 %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 51), align 8
  %25 = load i32, i32* @OMAP3430_EMU_MOD, align 4
  %26 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %27 = call i8* @omap2_cm_read_mod_reg(i32 %25, i32 %26)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 50), align 8
  %28 = load i32, i32* @PLL_MOD, align 4
  %29 = load i32, i32* @CM_AUTOIDLE, align 4
  %30 = call i8* @omap2_cm_read_mod_reg(i32 %28, i32 %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 49), align 8
  %31 = load i32, i32* @PLL_MOD, align 4
  %32 = load i32, i32* @CM_AUTOIDLE2, align 4
  %33 = call i8* @omap2_cm_read_mod_reg(i32 %31, i32 %32)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 48), align 8
  %34 = load i32, i32* @PLL_MOD, align 4
  %35 = load i32, i32* @OMAP3430ES2_CM_CLKSEL4, align 4
  %36 = call i8* @omap2_cm_read_mod_reg(i32 %34, i32 %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 47), align 8
  %37 = load i32, i32* @PLL_MOD, align 4
  %38 = load i32, i32* @OMAP3430ES2_CM_CLKSEL5, align 4
  %39 = call i8* @omap2_cm_read_mod_reg(i32 %37, i32 %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 46), align 8
  %40 = load i32, i32* @PLL_MOD, align 4
  %41 = load i32, i32* @OMAP3430ES2_CM_CLKEN2, align 4
  %42 = call i8* @omap2_cm_read_mod_reg(i32 %40, i32 %41)
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 45), align 8
  %43 = load i32, i32* @OCP_MOD, align 4
  %44 = load i32, i32* @OMAP3430_CM_POLCTRL, align 4
  %45 = call i8* @omap2_cm_read_mod_reg(i32 %43, i32 %44)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 44), align 8
  %46 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %47 = load i32, i32* @CM_FCLKEN, align 4
  %48 = call i8* @omap2_cm_read_mod_reg(i32 %46, i32 %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 43), align 8
  %49 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %50 = load i32, i32* @OMAP3430_CM_CLKEN_PLL, align 4
  %51 = call i8* @omap2_cm_read_mod_reg(i32 %49, i32 %50)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 42), align 8
  %52 = load i32, i32* @CORE_MOD, align 4
  %53 = load i32, i32* @CM_FCLKEN1, align 4
  %54 = call i8* @omap2_cm_read_mod_reg(i32 %52, i32 %53)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 41), align 8
  %55 = load i32, i32* @CORE_MOD, align 4
  %56 = load i32, i32* @OMAP3430ES2_CM_FCLKEN3, align 4
  %57 = call i8* @omap2_cm_read_mod_reg(i32 %55, i32 %56)
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 40), align 8
  %58 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %59 = load i32, i32* @CM_FCLKEN, align 4
  %60 = call i8* @omap2_cm_read_mod_reg(i32 %58, i32 %59)
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 39), align 8
  %61 = load i32, i32* @WKUP_MOD, align 4
  %62 = load i32, i32* @CM_FCLKEN, align 4
  %63 = call i8* @omap2_cm_read_mod_reg(i32 %61, i32 %62)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 38), align 8
  %64 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %65 = load i32, i32* @CM_FCLKEN, align 4
  %66 = call i8* @omap2_cm_read_mod_reg(i32 %64, i32 %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 37), align 8
  %67 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %68 = load i32, i32* @CM_FCLKEN, align 4
  %69 = call i8* @omap2_cm_read_mod_reg(i32 %67, i32 %68)
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 36), align 8
  %70 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %71 = load i32, i32* @CM_FCLKEN, align 4
  %72 = call i8* @omap2_cm_read_mod_reg(i32 %70, i32 %71)
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 35), align 8
  %73 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %74 = load i32, i32* @CM_FCLKEN, align 4
  %75 = call i8* @omap2_cm_read_mod_reg(i32 %73, i32 %74)
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 34), align 8
  %76 = load i32, i32* @CORE_MOD, align 4
  %77 = load i32, i32* @CM_ICLKEN1, align 4
  %78 = call i8* @omap2_cm_read_mod_reg(i32 %76, i32 %77)
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 33), align 8
  %79 = load i32, i32* @CORE_MOD, align 4
  %80 = load i32, i32* @CM_ICLKEN2, align 4
  %81 = call i8* @omap2_cm_read_mod_reg(i32 %79, i32 %80)
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 32), align 8
  %82 = load i32, i32* @CORE_MOD, align 4
  %83 = load i32, i32* @CM_ICLKEN3, align 4
  %84 = call i8* @omap2_cm_read_mod_reg(i32 %82, i32 %83)
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 31), align 8
  %85 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %86 = load i32, i32* @CM_ICLKEN, align 4
  %87 = call i8* @omap2_cm_read_mod_reg(i32 %85, i32 %86)
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 30), align 8
  %88 = load i32, i32* @WKUP_MOD, align 4
  %89 = load i32, i32* @CM_ICLKEN, align 4
  %90 = call i8* @omap2_cm_read_mod_reg(i32 %88, i32 %89)
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 29), align 8
  %91 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %92 = load i32, i32* @CM_ICLKEN, align 4
  %93 = call i8* @omap2_cm_read_mod_reg(i32 %91, i32 %92)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 28), align 8
  %94 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %95 = load i32, i32* @CM_ICLKEN, align 4
  %96 = call i8* @omap2_cm_read_mod_reg(i32 %94, i32 %95)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 27), align 8
  %97 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %98 = load i32, i32* @CM_ICLKEN, align 4
  %99 = call i8* @omap2_cm_read_mod_reg(i32 %97, i32 %98)
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 26), align 8
  %100 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %101 = load i32, i32* @CM_ICLKEN, align 4
  %102 = call i8* @omap2_cm_read_mod_reg(i32 %100, i32 %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 25), align 8
  %103 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %104 = load i32, i32* @CM_AUTOIDLE2, align 4
  %105 = call i8* @omap2_cm_read_mod_reg(i32 %103, i32 %104)
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 24), align 8
  %106 = load i32, i32* @MPU_MOD, align 4
  %107 = load i32, i32* @CM_AUTOIDLE2, align 4
  %108 = call i8* @omap2_cm_read_mod_reg(i32 %106, i32 %107)
  store i8* %108, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 23), align 8
  %109 = load i32, i32* @OMAP3430_IVA2_MOD, align 4
  %110 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %111 = call i8* @omap2_cm_read_mod_reg(i32 %109, i32 %110)
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 22), align 8
  %112 = load i32, i32* @MPU_MOD, align 4
  %113 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %114 = call i8* @omap2_cm_read_mod_reg(i32 %112, i32 %113)
  store i8* %114, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 21), align 8
  %115 = load i32, i32* @CORE_MOD, align 4
  %116 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %117 = call i8* @omap2_cm_read_mod_reg(i32 %115, i32 %116)
  store i8* %117, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 20), align 8
  %118 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %119 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %120 = call i8* @omap2_cm_read_mod_reg(i32 %118, i32 %119)
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 19), align 8
  %121 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %122 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %123 = call i8* @omap2_cm_read_mod_reg(i32 %121, i32 %122)
  store i8* %123, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 18), align 8
  %124 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %125 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %126 = call i8* @omap2_cm_read_mod_reg(i32 %124, i32 %125)
  store i8* %126, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 17), align 8
  %127 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %128 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %129 = call i8* @omap2_cm_read_mod_reg(i32 %127, i32 %128)
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 16), align 8
  %130 = load i32, i32* @OMAP3430_NEON_MOD, align 4
  %131 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %132 = call i8* @omap2_cm_read_mod_reg(i32 %130, i32 %131)
  store i8* %132, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 15), align 8
  %133 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %134 = load i32, i32* @OMAP2_CM_CLKSTCTRL, align 4
  %135 = call i8* @omap2_cm_read_mod_reg(i32 %133, i32 %134)
  store i8* %135, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 14), align 8
  %136 = load i32, i32* @CORE_MOD, align 4
  %137 = load i32, i32* @CM_AUTOIDLE1, align 4
  %138 = call i8* @omap2_cm_read_mod_reg(i32 %136, i32 %137)
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 13), align 8
  %139 = load i32, i32* @CORE_MOD, align 4
  %140 = load i32, i32* @CM_AUTOIDLE2, align 4
  %141 = call i8* @omap2_cm_read_mod_reg(i32 %139, i32 %140)
  store i8* %141, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 12), align 8
  %142 = load i32, i32* @CORE_MOD, align 4
  %143 = load i32, i32* @CM_AUTOIDLE3, align 4
  %144 = call i8* @omap2_cm_read_mod_reg(i32 %142, i32 %143)
  store i8* %144, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 11), align 8
  %145 = load i32, i32* @WKUP_MOD, align 4
  %146 = load i32, i32* @CM_AUTOIDLE, align 4
  %147 = call i8* @omap2_cm_read_mod_reg(i32 %145, i32 %146)
  store i8* %147, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 10), align 8
  %148 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %149 = load i32, i32* @CM_AUTOIDLE, align 4
  %150 = call i8* @omap2_cm_read_mod_reg(i32 %148, i32 %149)
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 9), align 8
  %151 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %152 = load i32, i32* @CM_AUTOIDLE, align 4
  %153 = call i8* @omap2_cm_read_mod_reg(i32 %151, i32 %152)
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 8), align 8
  %154 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %155 = load i32, i32* @CM_AUTOIDLE, align 4
  %156 = call i8* @omap2_cm_read_mod_reg(i32 %154, i32 %155)
  store i8* %156, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 7), align 8
  %157 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %158 = load i32, i32* @CM_AUTOIDLE, align 4
  %159 = call i8* @omap2_cm_read_mod_reg(i32 %157, i32 %158)
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 6), align 8
  %160 = load i32, i32* @OMAP3430ES2_SGX_MOD, align 4
  %161 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %162 = call i8* @omap2_cm_read_mod_reg(i32 %160, i32 %161)
  store i8* %162, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 5), align 8
  %163 = load i32, i32* @OMAP3430_DSS_MOD, align 4
  %164 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %165 = call i8* @omap2_cm_read_mod_reg(i32 %163, i32 %164)
  store i8* %165, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 4), align 8
  %166 = load i32, i32* @OMAP3430_CAM_MOD, align 4
  %167 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %168 = call i8* @omap2_cm_read_mod_reg(i32 %166, i32 %167)
  store i8* %168, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 3), align 8
  %169 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %170 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %171 = call i8* @omap2_cm_read_mod_reg(i32 %169, i32 %170)
  store i8* %171, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 2), align 8
  %172 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %173 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %174 = call i8* @omap2_cm_read_mod_reg(i32 %172, i32 %173)
  store i8* %174, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 1), align 8
  %175 = load i32, i32* @OMAP3430_CCR_MOD, align 4
  %176 = load i32, i32* @OMAP3_CM_CLKOUT_CTRL_OFFSET, align 4
  %177 = call i8* @omap2_cm_read_mod_reg(i32 %175, i32 %176)
  store i8* %177, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm_context, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @omap2_cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
