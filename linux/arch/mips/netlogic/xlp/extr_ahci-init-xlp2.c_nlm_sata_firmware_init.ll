; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_nlm_sata_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_nlm_sata_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Initializing XLP9XX On-chip AHCI...\0A\00", align 1
@SATA_CTL = common dso_local global i32 0, align 4
@P0_IRST_POR = common dso_local global i32 0, align 4
@P0_IRST_HARD_TXRX = common dso_local global i32 0, align 4
@P0_IRST_HARD_SYNTH = common dso_local global i32 0, align 4
@P0_IPDTXL = common dso_local global i32 0, align 4
@P0_IPDRXL = common dso_local global i32 0, align 4
@P0_IPDIPDMSYNTH = common dso_local global i32 0, align 4
@P1_IRST_POR = common dso_local global i32 0, align 4
@P1_IRST_HARD_TXRX = common dso_local global i32 0, align 4
@P1_IRST_HARD_SYNTH = common dso_local global i32 0, align 4
@P1_IPDTXL = common dso_local global i32 0, align 4
@P1_IPDRXL = common dso_local global i32 0, align 4
@P1_IPDIPDMSYNTH = common dso_local global i32 0, align 4
@sata_phy_debug = common dso_local global i64 0, align 8
@CR_REG_TIMER = common dso_local global i32 0, align 4
@CR_TIME_SCALE = common dso_local global i32 0, align 4
@SATA_RST_N = common dso_local global i32 0, align 4
@M_CSYSREQ = common dso_local global i32 0, align 4
@S_CSYSREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Waiting for PHYs to come up.\0A\00", align 1
@SATA_STATUS = common dso_local global i32 0, align 4
@P1_PHY_READY = common dso_local global i32 0, align 4
@P0_PHY_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"PHY0 is up.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PHY0 is down.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PHY1 is up.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"PHY1 is down.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"XLP AHCI Init Done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nlm_sata_firmware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_sata_firmware_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @nlm_get_sata_regbase(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SATA_CTL, align 4
  %11 = load i32, i32* @P0_IRST_POR, align 4
  %12 = call i32 @sata_clear_glue_reg(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SATA_CTL, align 4
  %15 = load i32, i32* @P0_IRST_HARD_TXRX, align 4
  %16 = call i32 @sata_clear_glue_reg(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SATA_CTL, align 4
  %19 = load i32, i32* @P0_IRST_HARD_SYNTH, align 4
  %20 = call i32 @sata_clear_glue_reg(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SATA_CTL, align 4
  %23 = load i32, i32* @P0_IPDTXL, align 4
  %24 = call i32 @sata_clear_glue_reg(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SATA_CTL, align 4
  %27 = load i32, i32* @P0_IPDRXL, align 4
  %28 = call i32 @sata_clear_glue_reg(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SATA_CTL, align 4
  %31 = load i32, i32* @P0_IPDIPDMSYNTH, align 4
  %32 = call i32 @sata_clear_glue_reg(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SATA_CTL, align 4
  %35 = load i32, i32* @P1_IRST_POR, align 4
  %36 = call i32 @sata_clear_glue_reg(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SATA_CTL, align 4
  %39 = load i32, i32* @P1_IRST_HARD_TXRX, align 4
  %40 = call i32 @sata_clear_glue_reg(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SATA_CTL, align 4
  %43 = load i32, i32* @P1_IRST_HARD_SYNTH, align 4
  %44 = call i32 @sata_clear_glue_reg(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SATA_CTL, align 4
  %47 = load i32, i32* @P1_IPDTXL, align 4
  %48 = call i32 @sata_clear_glue_reg(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SATA_CTL, align 4
  %51 = load i32, i32* @P1_IPDRXL, align 4
  %52 = call i32 @sata_clear_glue_reg(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SATA_CTL, align 4
  %55 = load i32, i32* @P1_IPDIPDMSYNTH, align 4
  %56 = call i32 @sata_clear_glue_reg(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @udelay(i32 300)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SATA_CTL, align 4
  %60 = load i32, i32* @P0_IPDTXL, align 4
  %61 = call i32 @sata_set_glue_reg(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SATA_CTL, align 4
  %64 = load i32, i32* @P0_IPDRXL, align 4
  %65 = call i32 @sata_set_glue_reg(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SATA_CTL, align 4
  %68 = load i32, i32* @P0_IPDIPDMSYNTH, align 4
  %69 = call i32 @sata_set_glue_reg(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SATA_CTL, align 4
  %72 = load i32, i32* @P1_IPDTXL, align 4
  %73 = call i32 @sata_set_glue_reg(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SATA_CTL, align 4
  %76 = load i32, i32* @P1_IPDRXL, align 4
  %77 = call i32 @sata_set_glue_reg(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @SATA_CTL, align 4
  %80 = load i32, i32* @P1_IPDIPDMSYNTH, align 4
  %81 = call i32 @sata_set_glue_reg(i32 %78, i32 %79, i32 %80)
  %82 = call i32 @udelay(i32 1000)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SATA_CTL, align 4
  %85 = load i32, i32* @P0_IRST_POR, align 4
  %86 = call i32 @sata_set_glue_reg(i32 %83, i32 %84, i32 %85)
  %87 = call i32 @udelay(i32 1000)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SATA_CTL, align 4
  %90 = load i32, i32* @P1_IRST_POR, align 4
  %91 = call i32 @sata_set_glue_reg(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @udelay(i32 1000)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @config_sata_phy(i32 %93)
  %95 = load i64, i64* @sata_phy_debug, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %1
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @verify_sata_phy_config(i32 %98)
  br label %100

100:                                              ; preds = %97, %1
  %101 = call i32 @udelay(i32 1000)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SATA_CTL, align 4
  %104 = load i32, i32* @P0_IRST_HARD_TXRX, align 4
  %105 = call i32 @sata_set_glue_reg(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SATA_CTL, align 4
  %108 = load i32, i32* @P0_IRST_HARD_SYNTH, align 4
  %109 = call i32 @sata_set_glue_reg(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @SATA_CTL, align 4
  %112 = load i32, i32* @P1_IRST_HARD_TXRX, align 4
  %113 = call i32 @sata_set_glue_reg(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SATA_CTL, align 4
  %116 = load i32, i32* @P1_IRST_HARD_SYNTH, align 4
  %117 = call i32 @sata_set_glue_reg(i32 %114, i32 %115, i32 %116)
  %118 = call i32 @udelay(i32 300)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @CR_REG_TIMER, align 4
  %121 = load i32, i32* @CR_TIME_SCALE, align 4
  %122 = call i32 @sata_set_glue_reg(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @SATA_CTL, align 4
  %125 = load i32, i32* @SATA_RST_N, align 4
  %126 = call i32 @sata_set_glue_reg(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @SATA_CTL, align 4
  %129 = load i32, i32* @M_CSYSREQ, align 4
  %130 = call i32 @sata_set_glue_reg(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @SATA_CTL, align 4
  %133 = load i32, i32* @S_CSYSREQ, align 4
  %134 = call i32 @sata_set_glue_reg(i32 %131, i32 %132, i32 %133)
  %135 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 10000, i32* %5, align 4
  br label %136

136:                                              ; preds = %152, %100
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @SATA_STATUS, align 4
  %139 = call i32 @nlm_read_sata_reg(i32 %137, i32 %138)
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @P1_PHY_READY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @P0_PHY_READY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %156

150:                                              ; preds = %144, %136
  %151 = call i32 @udelay(i32 10)
  br label %152

152:                                              ; preds = %150
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %5, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %136, label %156

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @P0_PHY_READY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %165

163:                                              ; preds = %156
  %164 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %161
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @P1_PHY_READY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %174

172:                                              ; preds = %165
  %173 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %170
  %175 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @nlm_get_sata_regbase(i32) #1

declare dso_local i32 @sata_clear_glue_reg(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sata_set_glue_reg(i32, i32, i32) #1

declare dso_local i32 @config_sata_phy(i32) #1

declare dso_local i32 @verify_sata_phy_config(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nlm_read_sata_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
