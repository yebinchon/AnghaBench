; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_bus_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_bus_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Bus Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0APLB6 Controller:\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"BC_SHD: 0x%08x\0A\00", align 1
@DCRN_PLB6_SHD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"BC_ERR: 0x%08x\0A\00", align 1
@DCRN_PLB6_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"\0APLB6-to-PLB4 Bridge:\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ESR:  0x%08x\0A\00", align 1
@DCRN_PLB6PLB4_ESR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"EARH: 0x%08x\0A\00", align 1
@DCRN_PLB6PLB4_EARH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"EARL: 0x%08x\0A\00", align 1
@DCRN_PLB6PLB4_EARL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\0APLB4-to-PLB6 Bridge:\0A\00", align 1
@DCRN_PLB4PLB6_ESR = common dso_local global i32 0, align 4
@DCRN_PLB4PLB6_EARH = common dso_local global i32 0, align 4
@DCRN_PLB4PLB6_EARL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"\0APLB6-to-MCIF Bridge:\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"BESR0: 0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BESR0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"BESR1: 0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BESR1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"BEARH: 0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BEARH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"BEARL: 0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BEARL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"\0APLB4 Arbiter:\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"P0ESRH 0x%08x\0A\00", align 1
@DCRN_PLB4_P0ESRH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"P0ESRL 0x%08x\0A\00", align 1
@DCRN_PLB4_P0ESRL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"P0EARH 0x%08x\0A\00", align 1
@DCRN_PLB4_P0EARH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"P1ESRH 0x%08x\0A\00", align 1
@DCRN_PLB4_P1ESRH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"P1ESRL 0x%08x\0A\00", align 1
@DCRN_PLB4_P1ESRL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"P1EARH 0x%08x\0A\00", align 1
@DCRN_PLB4_P1EARH = common dso_local global i32 0, align 4
@DCRN_PLB4OPB0_BASE = common dso_local global i32 0, align 4
@DCRN_PLB4OPB1_BASE = common dso_local global i32 0, align 4
@DCRN_PLB4OPB2_BASE = common dso_local global i32 0, align 4
@DCRN_PLB4OPB3_BASE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"\0APLB4-to-AHB Bridge:\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ESR:   0x%08x\0A\00", align 1
@DCRN_PLB4AHB_ESR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"SEUAR: 0x%08x\0A\00", align 1
@DCRN_PLB4AHB_SEUAR = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"SELAR: 0x%08x\0A\00", align 1
@DCRN_PLB4AHB_SELAR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"\0AAHB-to-PLB4 Bridge:\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"\0AESR: 0x%08x\0A\00", align 1
@DCRN_AHBPLB4_ESR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"\0AEAR: 0x%08x\0A\00", align 1
@DCRN_AHBPLB4_EAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bus_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @l2regs()
  %8 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @DCRN_PLB6_SHD, align 4
  %10 = call i32 @mfdcr(i32 %9)
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @DCRN_PLB6_ERR, align 4
  %13 = call i32 @mfdcr(i32 %12)
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @DCRN_PLB6PLB4_ESR, align 4
  %17 = call i32 @mfdcr(i32 %16)
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @DCRN_PLB6PLB4_EARH, align 4
  %20 = call i32 @mfdcr(i32 %19)
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @DCRN_PLB6PLB4_EARL, align 4
  %23 = call i32 @mfdcr(i32 %22)
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %26 = load i32, i32* @DCRN_PLB4PLB6_ESR, align 4
  %27 = call i32 @mfdcr(i32 %26)
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @DCRN_PLB4PLB6_EARH, align 4
  %30 = call i32 @mfdcr(i32 %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @DCRN_PLB4PLB6_EARL, align 4
  %33 = call i32 @mfdcr(i32 %32)
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %36 = load i32, i32* @DCRN_PLB6MCIF_BESR0, align 4
  %37 = call i32 @mfdcr(i32 %36)
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @DCRN_PLB6MCIF_BESR1, align 4
  %40 = call i32 @mfdcr(i32 %39)
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @DCRN_PLB6MCIF_BEARH, align 4
  %43 = call i32 @mfdcr(i32 %42)
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @DCRN_PLB6MCIF_BEARL, align 4
  %46 = call i32 @mfdcr(i32 %45)
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %46)
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %49 = load i32, i32* @DCRN_PLB4_P0ESRH, align 4
  %50 = call i32 @mfdcr(i32 %49)
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @DCRN_PLB4_P0ESRL, align 4
  %53 = call i32 @mfdcr(i32 %52)
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @DCRN_PLB4_P0EARH, align 4
  %56 = call i32 @mfdcr(i32 %55)
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @DCRN_PLB4_P0EARH, align 4
  %59 = call i32 @mfdcr(i32 %58)
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @DCRN_PLB4_P1ESRH, align 4
  %62 = call i32 @mfdcr(i32 %61)
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @DCRN_PLB4_P1ESRL, align 4
  %65 = call i32 @mfdcr(i32 %64)
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @DCRN_PLB4_P1EARH, align 4
  %68 = call i32 @mfdcr(i32 %67)
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @DCRN_PLB4_P1EARH, align 4
  %71 = call i32 @mfdcr(i32 %70)
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @DCRN_PLB4OPB0_BASE, align 4
  %74 = call i32 @show_plbopb_regs(i32 %73, i32 0)
  %75 = load i32, i32* @DCRN_PLB4OPB1_BASE, align 4
  %76 = call i32 @show_plbopb_regs(i32 %75, i32 1)
  %77 = load i32, i32* @DCRN_PLB4OPB2_BASE, align 4
  %78 = call i32 @show_plbopb_regs(i32 %77, i32 2)
  %79 = load i32, i32* @DCRN_PLB4OPB3_BASE, align 4
  %80 = call i32 @show_plbopb_regs(i32 %79, i32 3)
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %82 = load i32, i32* @DCRN_PLB4AHB_ESR, align 4
  %83 = call i32 @mfdcr(i32 %82)
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @DCRN_PLB4AHB_SEUAR, align 4
  %86 = call i32 @mfdcr(i32 %85)
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @DCRN_PLB4AHB_SELAR, align 4
  %89 = call i32 @mfdcr(i32 %88)
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %89)
  %91 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %92 = load i32, i32* @DCRN_AHBPLB4_ESR, align 4
  %93 = call i32 @mfdcr(i32 %92)
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @DCRN_AHBPLB4_EAR, align 4
  %96 = call i32 @mfdcr(i32 %95)
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %96)
  %98 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @l2regs(...) #1

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @show_plbopb_regs(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
