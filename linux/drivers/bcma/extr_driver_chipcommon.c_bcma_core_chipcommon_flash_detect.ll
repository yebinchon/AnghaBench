; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_flash_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_flash_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.bcma_bus* }
%struct.TYPE_6__ = type { i32 }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BCMA_CC_CAP_FLASHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found serial flash\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Found parallel flash\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Flash type not supported\0A\00", align 1
@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@BCMA_CC_CAP_NFLASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Found NAND flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_cc*)* @bcma_core_chipcommon_flash_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_core_chipcommon_flash_detect(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %4 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.bcma_bus*, %struct.bcma_bus** %7, align 8
  store %struct.bcma_bus* %8, %struct.bcma_bus** %3, align 8
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %10 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BCMA_CC_CAP_FLASHT, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 130, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %16 = call i32 @bcma_debug(%struct.bcma_bus* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %18 = call i32 @bcma_sflash_init(%struct.bcma_drv_cc* %17)
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %21 = call i32 @bcma_debug(%struct.bcma_bus* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %23 = call i32 @bcma_pflash_init(%struct.bcma_drv_cc* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %26 = call i32 @bcma_err(%struct.bcma_bus* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19, %14
  %28 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %29 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 38
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %37 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35, %27
  %43 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %44 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BCMA_CC_CAP_NFLASH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %51 = call i32 @bcma_debug(%struct.bcma_bus* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %53 = call i32 @bcma_nflash_init(%struct.bcma_drv_cc* %52)
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %35
  ret void
}

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_sflash_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_pflash_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_nflash_init(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
