; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_reg_pm_clk_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_reg_pm_clk_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pcie2 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_drv_cc }
%struct.bcma_drv_cc = type { i32 }

@BCMA_CORE_PCIE2_CONFIGINDADDR = common dso_local global i32 0, align 4
@PCIE2_PVT_REG_PM_CLK_PERIOD = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2_CONFIGINDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pcie2*)* @pciedev_reg_pm_clk_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pciedev_reg_pm_clk_period(%struct.bcma_drv_pcie2* %0) #0 {
  %2 = alloca %struct.bcma_drv_pcie2*, align 8
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_pcie2* %0, %struct.bcma_drv_pcie2** %2, align 8
  %7 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %8 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.bcma_drv_cc* %12, %struct.bcma_drv_cc** %3, align 8
  %13 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %14 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 13
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %23 = call i32 @bcma_pmu_get_alp_clock(%struct.bcma_drv_cc* %22)
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 2000000, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %28 = load i32, i32* @BCMA_CORE_PCIE2_CONFIGINDADDR, align 4
  %29 = load i32, i32* @PCIE2_PVT_REG_PM_CLK_PERIOD, align 4
  %30 = call i32 @pcie2_write32(%struct.bcma_drv_pcie2* %27, i32 %28, i32 %29)
  %31 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %32 = load i32, i32* @BCMA_CORE_PCIE2_CONFIGINDDATA, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pcie2_write32(%struct.bcma_drv_pcie2* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @bcma_pmu_get_alp_clock(%struct.bcma_drv_cc*) #1

declare dso_local i32 @pcie2_write32(%struct.bcma_drv_pcie2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
