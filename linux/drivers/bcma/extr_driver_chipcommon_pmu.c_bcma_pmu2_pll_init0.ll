; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu2_pll_init0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu2_pll_init0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unknown TGT frequency for xtalfreq %d\0A\00", align 1
@BCMA_CC_PMU15_PLL_PLLCTL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Target TGT frequency already set\0A\00", align 1
@BCMA_RES_4314_HT_AVAIL = common dso_local global i32 0, align 4
@BCMA_RES_4314_MACPHY_CLK_AVAIL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_MINRES_MSK = common dso_local global i32 0, align 4
@BCMA_CC_PMU_MAXRES_MSK = common dso_local global i32 0, align 4
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_HAVEHT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_PLL_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_cc*, i32)* @bcma_pmu2_pll_init0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pmu2_pll_init0(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %11 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %13, align 8
  store %struct.bcma_bus* %14, %struct.bcma_bus** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %26 [
    i32 12000, label %21
    i32 20000, label %22
    i32 26000, label %23
    i32 37400, label %24
    i32 52000, label %25
  ]

21:                                               ; preds = %19
  store i32 331090, i32* %6, align 4
  br label %26

22:                                               ; preds = %19
  store i32 198654, i32* %6, align 4
  br label %26

23:                                               ; preds = %19
  store i32 152810, i32* %6, align 4
  br label %26

24:                                               ; preds = %19
  store i32 106232, i32* %6, align 4
  br label %26

25:                                               ; preds = %19
  store i32 76405, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %25, %24, %23, %22, %21
  br label %27

27:                                               ; preds = %2, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @bcma_err(%struct.bcma_bus* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %97

34:                                               ; preds = %27
  %35 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %36 = load i32, i32* @BCMA_CC_PMU15_PLL_PLLCTL0, align 4
  %37 = call i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %48 = call i32 @bcma_debug(%struct.bcma_bus* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %97

49:                                               ; preds = %34
  %50 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %51 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %73 [
    i32 128, label %54
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* @BCMA_RES_4314_HT_AVAIL, align 4
  %56 = load i32, i32* @BCMA_RES_4314_MACPHY_CLK_AVAIL, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %60 = load i32, i32* @BCMA_CC_PMU_MINRES_MSK, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @bcma_pmu_mask32(%struct.bcma_drv_cc* %59, i32 %60, i32 %61)
  %63 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %64 = load i32, i32* @BCMA_CC_PMU_MAXRES_MSK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @bcma_pmu_mask32(%struct.bcma_drv_cc* %63, i32 %64, i32 %65)
  %67 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %68 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* @BCMA_CLKCTLST, align 4
  %71 = load i32, i32* @BCMA_CLKCTLST_HAVEHT, align 4
  %72 = call i32 @bcma_wait_value(%struct.TYPE_6__* %69, i32 %70, i32 %71, i32 0, i32 20000)
  br label %73

73:                                               ; preds = %49, %54
  %74 = load i32, i32* @BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %84 = load i32, i32* @BCMA_CC_PMU15_PLL_PLLCTL0, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc* %83, i32 %84, i32 %85)
  %87 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %88 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 2
  br i1 %91, label %92, label %97

92:                                               ; preds = %73
  %93 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %94 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %95 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  %96 = call i32 @bcma_pmu_set32(%struct.bcma_drv_cc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %30, %46, %92, %73
  ret void
}

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, i32) #1

declare dso_local i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_pmu_mask32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_wait_value(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_write(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_set32(%struct.bcma_drv_cc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
