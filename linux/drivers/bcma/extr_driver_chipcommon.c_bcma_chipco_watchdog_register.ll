; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, %struct.platform_device*, %struct.TYPE_4__* }
%struct.platform_device = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.bcm47xx_wdt = type { i32, i32, i32, %struct.bcma_drv_cc* }

@BCMA_CHIP_ID_BCM53573 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"No watchdog on 53573A0 / 53573A1\0A\00", align 1
@bcma_chipco_watchdog_timer_set_wdt = common dso_local global i32 0, align 4
@bcma_chipco_watchdog_timer_set_ms_wdt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bcm47xx-wdt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_chipco_watchdog_register(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca %struct.bcm47xx_wdt, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %7 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %10, align 8
  store %struct.bcma_bus* %11, %struct.bcma_bus** %4, align 8
  %12 = bitcast %struct.bcm47xx_wdt* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCMA_CHIP_ID_BCM53573, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

27:                                               ; preds = %19, %1
  %28 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %29 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %5, i32 0, i32 3
  store %struct.bcma_drv_cc* %28, %struct.bcma_drv_cc** %29, align 8
  %30 = load i32, i32* @bcma_chipco_watchdog_timer_set_wdt, align 4
  %31 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @bcma_chipco_watchdog_timer_set_ms_wdt, align 4
  %33 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %35 = call i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc* %34)
  %36 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %37 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %35, %38
  %40 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.platform_device* @platform_device_register_data(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43, %struct.bcm47xx_wdt* %5, i32 24)
  store %struct.platform_device* %44, %struct.platform_device** %6, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %46 = call i64 @IS_ERR(%struct.platform_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.platform_device* %49)
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %27
  %52 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %53 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %54 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %53, i32 0, i32 1
  store %struct.platform_device* %52, %struct.platform_device** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %48, %25
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc*) #2

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.bcm47xx_wdt*, i32) #2

declare dso_local i64 @IS_ERR(%struct.platform_device*) #2

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
