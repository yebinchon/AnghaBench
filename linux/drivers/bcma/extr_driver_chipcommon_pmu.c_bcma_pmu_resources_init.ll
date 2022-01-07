; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_RES_4314_LPLDO_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_PMU_SLEEP_DIS = common dso_local global i32 0, align 4
@BCMA_RES_4314_PMU_BG_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_CBUCK_LPOM_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_CBUCK_PFM_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_CLDO_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_LPLDO2_LVM = common dso_local global i32 0, align 4
@BCMA_RES_4314_WL_PMU_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_LDO3P3_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_OTP_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_WL_PWRSW_PU = common dso_local global i32 0, align 4
@BCMA_RES_4314_LQ_AVAIL = common dso_local global i32 0, align 4
@BCMA_RES_4314_LOGIC_RET = common dso_local global i32 0, align 4
@BCMA_RES_4314_MEM_SLEEP = common dso_local global i32 0, align 4
@BCMA_RES_4314_MACPHY_RET = common dso_local global i32 0, align 4
@BCMA_RES_4314_WL_CORE_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"PMU resource config unknown or not needed for device 0x%04X\0A\00", align 1
@BCMA_CC_PMU_MINRES_MSK = common dso_local global i32 0, align 4
@BCMA_CC_PMU_MAXRES_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_cc*)* @bcma_pmu_resources_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pmu_resources_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %6 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %48 [
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %1
  store i32 8205, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load i32, i32* @BCMA_RES_4314_LPLDO_PU, align 4
  %18 = load i32, i32* @BCMA_RES_4314_PMU_SLEEP_DIS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BCMA_RES_4314_PMU_BG_PU, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BCMA_RES_4314_CBUCK_LPOM_PU, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BCMA_RES_4314_CBUCK_PFM_PU, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BCMA_RES_4314_CLDO_PU, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BCMA_RES_4314_LPLDO2_LVM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BCMA_RES_4314_WL_PMU_PU, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BCMA_RES_4314_LDO3P3_PU, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BCMA_RES_4314_OTP_PU, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BCMA_RES_4314_WL_PWRSW_PU, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @BCMA_RES_4314_LQ_AVAIL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @BCMA_RES_4314_LOGIC_RET, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BCMA_RES_4314_MEM_SLEEP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BCMA_RES_4314_MACPHY_RET, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BCMA_RES_4314_WL_CORE_READY, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %4, align 4
  store i32 1073741823, i32* %5, align 4
  br label %55

48:                                               ; preds = %1
  %49 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %50 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %51 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bcma_debug(%struct.bcma_bus* %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %16, %15
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %60 = load i32, i32* @BCMA_CC_PMU_MINRES_MSK, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %68 = load i32, i32* @BCMA_CC_PMU_MAXRES_MSK, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = call i32 @usleep_range(i32 2000, i32 2500)
  ret void
}

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

declare dso_local i32 @bcma_pmu_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
