; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_nflash.c_bcma_nflash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_nflash.c_bcma_nflash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.bcma_drv_cc = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.bcma_bus* }
%struct.TYPE_8__ = type { i32 }
%struct.bcma_bus = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"NAND flash on unsupported board!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@BCMA_CC_CAP_NFLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"NAND flash not present according to ChipCommon\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_5357_NAND_BOOT = common dso_local global i32 0, align 4
@bcma_nflash_dev = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_nflash_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %5 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %5, i32 0, i32 3
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  store %struct.bcma_bus* %9, %struct.bcma_bus** %4, align 8
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %18 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %17, i32 0, i32 3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 38
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %26 = call i32 @bcma_err(%struct.bcma_bus* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %16, %1
  %30 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %31 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BCMA_CC_CAP_NFLASH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %38 = call i32 @bcma_err(%struct.bcma_bus* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %66

41:                                               ; preds = %29
  %42 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %43 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %46 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %45, i32 0, i32 3
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 38
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %54 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BCMA_CC_CHIPST_5357_NAND_BOOT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %61 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %52, %41
  %64 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %65 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %64, i32 0, i32 2
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bcma_nflash_dev, i32 0, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %36, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
