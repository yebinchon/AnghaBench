; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_sdramc_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_sdramc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_SDRAMC_SDCR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_REF = common dso_local global i32 0, align 4
@SDRAM_ADDRESS = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCS_CSSZ_32MBYTE = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCS0 = common dso_local global i32 0, align 4
@SDRAM_CASL = common dso_local global i32 0, align 4
@SDRAM_TWR = common dso_local global i64 0, align 8
@SDRAM_TRCD = common dso_local global i64 0, align 8
@SDRAM_TRP = common dso_local global i64 0, align 8
@SDRAM_TRFC = common dso_local global i64 0, align 8
@MCF_SDRAMC_SDCFG1 = common dso_local global i32 0, align 4
@SDRAM_BL = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCFG2 = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_MODE_EN = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_CKE = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_DDR = common dso_local global i32 0, align 4
@SDRAM_TREFI = common dso_local global i32 0, align 4
@SYSTEM_PERIOD = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_PS_16 = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_IPALL = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_BNKAD_LEMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_CMD = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_BNKAD_LMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_IREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdramc_init() #0 {
  %1 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %2 = call i32 @readl(i32 %1)
  %3 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %152, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @SDRAM_ADDRESS, align 4
  %8 = call i32 @MCF_SDRAMC_SDCS_BA(i32 %7)
  %9 = load i32, i32* @MCF_SDRAMC_SDCS_CSSZ_32MBYTE, align 4
  %10 = call i32 @MCF_SDRAMC_SDCS_CSSZ(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @MCF_SDRAMC_SDCS0, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  %14 = load i32, i32* @SDRAM_CASL, align 4
  %15 = add nsw i32 %14, 2
  %16 = sitofp i32 %15 to double
  %17 = fadd double %16, 5.000000e-01
  %18 = fptosi double %17 to i32
  %19 = call i32 @MCF_SDRAMC_SDCFG1_SRD2RW(i32 %18)
  %20 = load i64, i64* @SDRAM_TWR, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @MCF_SDRAMC_SDCFG1_SWT2RD(i64 %21)
  %23 = or i32 %19, %22
  %24 = load i32, i32* @SDRAM_CASL, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 2
  %27 = call i32 @MCF_SDRAMC_SDCFG1_RDLAT(i32 %26)
  %28 = or i32 %23, %27
  %29 = load i64, i64* @SDRAM_TRCD, align 8
  %30 = sitofp i64 %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fptosi double %31 to i32
  %33 = call i32 @MCF_SDRAMC_SDCFG1_ACT2RW(i32 %32)
  %34 = or i32 %28, %33
  %35 = load i64, i64* @SDRAM_TRP, align 8
  %36 = sitofp i64 %35 to double
  %37 = fadd double %36, 5.000000e-01
  %38 = fptosi double %37 to i32
  %39 = call i32 @MCF_SDRAMC_SDCFG1_PRE2ACT(i32 %38)
  %40 = or i32 %34, %39
  %41 = load i64, i64* @SDRAM_TRFC, align 8
  %42 = sitofp i64 %41 to double
  %43 = fadd double %42, 5.000000e-01
  %44 = fptosi double %43 to i32
  %45 = call i32 @MCF_SDRAMC_SDCFG1_REF2ACT(i32 %44)
  %46 = or i32 %40, %45
  %47 = call i32 @MCF_SDRAMC_SDCFG1_WTLAT(i32 3)
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MCF_SDRAMC_SDCFG1, align 4
  %50 = call i32 @writel(i32 %48, i32 %49)
  %51 = load i32, i32* @SDRAM_BL, align 4
  %52 = sdiv i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = call i32 @MCF_SDRAMC_SDCFG2_BRD2PRE(i32 %53)
  %55 = load i32, i32* @SDRAM_BL, align 4
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @SDRAM_TWR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @MCF_SDRAMC_SDCFG2_BWT2RW(i64 %59)
  %61 = or i32 %54, %60
  %62 = load i32, i32* @SDRAM_CASL, align 4
  %63 = load i32, i32* @SDRAM_BL, align 4
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %62, %64
  %66 = sitofp i32 %65 to double
  %67 = fsub double %66, 1.000000e+00
  %68 = fadd double %67, 5.000000e-01
  %69 = fptosi double %68 to i32
  %70 = call i32 @MCF_SDRAMC_SDCFG2_BRD2WT(i32 %69)
  %71 = or i32 %61, %70
  %72 = load i32, i32* @SDRAM_BL, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @MCF_SDRAMC_SDCFG2_BL(i32 %73)
  %75 = or i32 %71, %74
  %76 = load i32, i32* @MCF_SDRAMC_SDCFG2, align 4
  %77 = call i32 @writel(i32 %75, i32 %76)
  %78 = load i32, i32* @MCF_SDRAMC_SDCR_MODE_EN, align 4
  %79 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MCF_SDRAMC_SDCR_DDR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @MCF_SDRAMC_SDCR_MUX(i32 1)
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SDRAM_TREFI, align 4
  %86 = load i32, i32* @SYSTEM_PERIOD, align 4
  %87 = mul nsw i32 %86, 64
  %88 = sdiv i32 %85, %87
  %89 = sub nsw i32 %88, 1
  %90 = sitofp i32 %89 to double
  %91 = fadd double %90, 5.000000e-01
  %92 = fptosi double %91 to i32
  %93 = call i32 @MCF_SDRAMC_SDCR_RCNT(i32 %92)
  %94 = or i32 %84, %93
  %95 = load i32, i32* @MCF_SDRAMC_SDCR_PS_16, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MCF_SDRAMC_SDCR_IPALL, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %100 = call i32 @writel(i32 %98, i32 %99)
  %101 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LEMR, align 4
  %102 = call i32 @MCF_SDRAMC_SDMR_AD(i32 0)
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MCF_SDRAMC_SDMR, align 4
  %107 = call i32 @writel(i32 %105, i32 %106)
  %108 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LMR, align 4
  %109 = call i32 @MCF_SDRAMC_SDMR_AD(i32 355)
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MCF_SDRAMC_SDMR, align 4
  %114 = call i32 @writel(i32 %112, i32 %113)
  %115 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %116 = call i32 @readl(i32 %115)
  %117 = load i32, i32* @MCF_SDRAMC_SDCR_IPALL, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %120 = call i32 @writel(i32 %118, i32 %119)
  %121 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %122 = call i32 @readl(i32 %121)
  %123 = load i32, i32* @MCF_SDRAMC_SDCR_IREF, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %126 = call i32 @writel(i32 %124, i32 %125)
  %127 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %128 = call i32 @readl(i32 %127)
  %129 = load i32, i32* @MCF_SDRAMC_SDCR_IREF, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %132 = call i32 @writel(i32 %130, i32 %131)
  %133 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LMR, align 4
  %134 = call i32 @MCF_SDRAMC_SDMR_AD(i32 99)
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MCF_SDRAMC_SDMR, align 4
  %139 = call i32 @writel(i32 %137, i32 %138)
  %140 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %141 = call i32 @readl(i32 %140)
  %142 = load i32, i32* @MCF_SDRAMC_SDCR_MODE_EN, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %146 = call i32 @writel(i32 %144, i32 %145)
  %147 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %148 = call i32 @MCF_SDRAMC_SDCR_DQS_OE(i32 12)
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %151 = call i32 @writel(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %6, %0
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCS_BA(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCS_CSSZ(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_SRD2RW(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_SWT2RD(i64) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_RDLAT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_ACT2RW(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_PRE2ACT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_REF2ACT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_WTLAT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BRD2PRE(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BWT2RW(i64) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BRD2WT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BL(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_MUX(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_RCNT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDMR_AD(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_DQS_OE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
