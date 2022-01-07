; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_fix_i2s_irqflag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_fix_i2s_irqflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bcma_device = type { i32 }

@BCMA_CHIP_ID_BCM4716 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM4748 = common dso_local global i64 0, align 8
@BCMA_CORE_MIPS_74K = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE = common dso_local global i32 0, align 4
@BCMA_CORE_I2S = common dso_local global i32 0, align 4
@BCMA_MIPS_OOBSELINA74 = common dso_local global i32 0, align 4
@BCMA_MIPS_OOBSELOUTA30 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Moved i2s interrupt to oob line 7 instead of 8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_bus*)* @bcma_fix_i2s_irqflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_fix_i2s_irqflag(%struct.bcma_bus* %0) #0 {
  %2 = alloca %struct.bcma_bus*, align 8
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %2, align 8
  %6 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCMA_CHIP_ID_BCM4748, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %65

20:                                               ; preds = %12, %1
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %22 = load i32, i32* @BCMA_CORE_MIPS_74K, align 4
  %23 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %21, i32 %22)
  store %struct.bcma_device* %23, %struct.bcma_device** %3, align 8
  %24 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %25 = load i32, i32* @BCMA_CORE_PCIE, align 4
  %26 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %24, i32 %25)
  store %struct.bcma_device* %26, %struct.bcma_device** %4, align 8
  %27 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %28 = load i32, i32* @BCMA_CORE_I2S, align 4
  %29 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %27, i32 %28)
  store %struct.bcma_device* %29, %struct.bcma_device** %5, align 8
  %30 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %31 = icmp ne %struct.bcma_device* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %20
  %33 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %34 = icmp ne %struct.bcma_device* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %37 = icmp ne %struct.bcma_device* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %40 = load i32, i32* @BCMA_MIPS_OOBSELINA74, align 4
  %41 = call i32 @bcma_aread32(%struct.bcma_device* %39, i32 %40)
  %42 = icmp eq i32 %41, 134612228
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %45 = load i32, i32* @BCMA_MIPS_OOBSELINA74, align 4
  %46 = call i32 @bcma_aread32(%struct.bcma_device* %44, i32 %45)
  %47 = icmp eq i32 %46, 134612228
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %50 = load i32, i32* @BCMA_MIPS_OOBSELOUTA30, align 4
  %51 = call i32 @bcma_aread32(%struct.bcma_device* %49, i32 %50)
  %52 = icmp eq i32 %51, 136
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %55 = load i32, i32* @BCMA_MIPS_OOBSELINA74, align 4
  %56 = call i32 @bcma_awrite32(%struct.bcma_device* %54, i32 %55, i32 117835012)
  %57 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %58 = load i32, i32* @BCMA_MIPS_OOBSELINA74, align 4
  %59 = call i32 @bcma_awrite32(%struct.bcma_device* %57, i32 %58, i32 117835012)
  %60 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %61 = load i32, i32* @BCMA_MIPS_OOBSELOUTA30, align 4
  %62 = call i32 @bcma_awrite32(%struct.bcma_device* %60, i32 %61, i32 135)
  %63 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %64 = call i32 @bcma_debug(%struct.bcma_bus* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %19, %53, %48, %43, %38, %35, %32, %20
  ret void
}

declare dso_local %struct.bcma_device* @bcma_find_core(%struct.bcma_bus*, i32) #1

declare dso_local i32 @bcma_aread32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_awrite32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
