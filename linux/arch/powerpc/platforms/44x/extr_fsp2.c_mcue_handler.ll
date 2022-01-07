; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_mcue_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_mcue_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"DDR: Uncorrectable Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MCSTAT:            0x%08x\0A\00", align 1
@DCRN_DDR34_BASE = common dso_local global i64 0, align 8
@DCRN_DDR34_MCSTAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"MCOPT1:            0x%08x\0A\00", align 1
@DCRN_DDR34_MCOPT1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"MCOPT2:            0x%08x\0A\00", align 1
@DCRN_DDR34_MCOPT2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"PHYSTAT:           0x%08x\0A\00", align 1
@DCRN_DDR34_PHYSTAT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"CFGR0:             0x%08x\0A\00", align 1
@DCRN_DDR34_CFGR0 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"CFGR1:             0x%08x\0A\00", align 1
@DCRN_DDR34_CFGR1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"CFGR2:             0x%08x\0A\00", align 1
@DCRN_DDR34_CFGR2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"CFGR3:             0x%08x\0A\00", align 1
@DCRN_DDR34_CFGR3 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"SCRUB_CNTL:        0x%08x\0A\00", align 1
@DCRN_DDR34_SCRUB_CNTL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"ECCERR_PORT0:      0x%08x\0A\00", align 1
@DCRN_DDR34_ECCERR_PORT0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"ECCERR_ADDR_PORT0: 0x%08x\0A\00", align 1
@DCRN_DDR34_ECCERR_ADDR_PORT0 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"ECCERR_CNT_PORT0:  0x%08x\0A\00", align 1
@DCRN_DDR34_ECCERR_COUNT_PORT0 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"ECC_CHECK_PORT0:   0x%08x\0A\00", align 1
@DCRN_DDR34_ECC_CHECK_PORT0 = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"MCER0:            0x%08x\0A\00", align 1
@DCRN_CW_BASE = common dso_local global i64 0, align 8
@DCRN_CW_MCER0 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"MCER1:            0x%08x\0A\00", align 1
@DCRN_CW_MCER1 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"BESR:             0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BESR0 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"BEARL:            0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BEARL = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"BEARH:            0x%08x\0A\00", align 1
@DCRN_PLB6MCIF_BEARH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcue_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcue_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %8 = load i64, i64* @DCRN_DDR34_MCSTAT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @mfdcr(i64 %9)
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %13 = load i64, i64* @DCRN_DDR34_MCOPT1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @mfdcr(i64 %14)
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %18 = load i64, i64* @DCRN_DDR34_MCOPT2, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mfdcr(i64 %19)
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %23 = load i64, i64* @DCRN_DDR34_PHYSTAT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mfdcr(i64 %24)
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %28 = load i64, i64* @DCRN_DDR34_CFGR0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mfdcr(i64 %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %33 = load i64, i64* @DCRN_DDR34_CFGR1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mfdcr(i64 %34)
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %38 = load i64, i64* @DCRN_DDR34_CFGR2, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @mfdcr(i64 %39)
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %43 = load i64, i64* @DCRN_DDR34_CFGR3, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mfdcr(i64 %44)
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %48 = load i64, i64* @DCRN_DDR34_SCRUB_CNTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @mfdcr(i64 %49)
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %53 = load i64, i64* @DCRN_DDR34_ECCERR_PORT0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @mfdcr(i64 %54)
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %58 = load i64, i64* @DCRN_DDR34_ECCERR_ADDR_PORT0, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @mfdcr(i64 %59)
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %63 = load i64, i64* @DCRN_DDR34_ECCERR_COUNT_PORT0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @mfdcr(i64 %64)
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* @DCRN_DDR34_BASE, align 8
  %68 = load i64, i64* @DCRN_DDR34_ECC_CHECK_PORT0, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @mfdcr(i64 %69)
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* @DCRN_CW_BASE, align 8
  %73 = load i64, i64* @DCRN_CW_MCER0, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @mfdcr(i64 %74)
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* @DCRN_CW_BASE, align 8
  %78 = load i64, i64* @DCRN_CW_MCER1, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @mfdcr(i64 %79)
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* @DCRN_PLB6MCIF_BESR0, align 8
  %83 = call i32 @mfdcr(i64 %82)
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* @DCRN_PLB6MCIF_BEARL, align 8
  %86 = call i32 @mfdcr(i64 %85)
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* @DCRN_PLB6MCIF_BEARH, align 8
  %89 = call i32 @mfdcr(i64 %88)
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %89)
  %91 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
