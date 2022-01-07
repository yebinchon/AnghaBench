; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BCMA_CCTRL_4313_12MA_LED_DRIVE = common dso_local global i32 0, align 4
@BCMA_CC_CHIPCTL = common dso_local global i32 0, align 4
@BCMA_CCTRL_43224_GPIO_TOGGLE = common dso_local global i32 0, align 4
@BCMA_CCTRL_43224A0_12MA_LED_DRIVE = common dso_local global i32 0, align 4
@BCMA_CCTRL_43224B0_12MA_LED_DRIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Workarounds unknown or not needed for device 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_cc*)* @bcma_pmu_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pmu_workarounds(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %4 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.bcma_bus*, %struct.bcma_bus** %7, align 8
  store %struct.bcma_bus* %8, %struct.bcma_bus** %3, align 8
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %47 [
    i32 132, label %13
    i32 130, label %19
    i32 128, label %19
    i32 131, label %22
    i32 129, label %22
  ]

13:                                               ; preds = %1
  %14 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %15 = load i32, i32* @BCMA_CCTRL_4313_12MA_LED_DRIVE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @BCMA_CCTRL_4313_12MA_LED_DRIVE, align 4
  %18 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %14, i32 0, i32 %16, i32 %17)
  br label %54

19:                                               ; preds = %1, %1
  %20 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %21 = call i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.bcma_drv_cc* %20, i32 1)
  br label %54

22:                                               ; preds = %1, %1
  %23 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %30 = load i32, i32* @BCMA_CC_CHIPCTL, align 4
  %31 = load i32, i32* @BCMA_CCTRL_43224_GPIO_TOGGLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @BCMA_CCTRL_43224_GPIO_TOGGLE, align 4
  %34 = call i32 @bcma_cc_maskset32(%struct.bcma_drv_cc* %29, i32 %30, i32 %32, i32 %33)
  %35 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %36 = load i32, i32* @BCMA_CCTRL_43224A0_12MA_LED_DRIVE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* @BCMA_CCTRL_43224A0_12MA_LED_DRIVE, align 4
  %39 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %35, i32 0, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %22
  %41 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %42 = load i32, i32* @BCMA_CCTRL_43224B0_12MA_LED_DRIVE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @BCMA_CCTRL_43224B0_12MA_LED_DRIVE, align 4
  %45 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %41, i32 0, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %28
  br label %54

47:                                               ; preds = %1
  %48 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %49 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bcma_debug(%struct.bcma_bus* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %46, %19, %13
  ret void
}

declare dso_local i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_cc_maskset32(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
