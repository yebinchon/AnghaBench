; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@BCMA_CHIP_ID_BCM43142 = common dso_local global i64 0, align 8
@BCMA_CC_GPIOPULLUP = common dso_local global i32 0, align 4
@BCMA_CC_GPIOPULLDOWN = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Power control not implemented!\0A\00", align 1
@BCMA_CC_GPIOTIMER = common dso_local global i32 0, align 4
@BCMA_CC_GPIOTIMER_ONTIME_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_GPIOTIMER_OFFTIME_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_chipcommon_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  store i32 10, i32* %3, align 4
  store i32 90, i32* %4, align 4
  %7 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %8 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %130

12:                                               ; preds = %1
  %13 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %14 = call i32 @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc* %13)
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %16 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 20
  br i1 %21, label %22, label %43

22:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %23 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %24 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCMA_CHIP_ID_BCM43142, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 262880, i32* %5, align 4
  store i32 132352, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %36 = load i32, i32* @BCMA_CC_GPIOPULLUP, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %35, i32 %36, i32 %37)
  %39 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %40 = load i32, i32* @BCMA_CC_GPIOPULLDOWN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %12
  %44 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %45 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %52 = call i32 @bcma_pmu_init(%struct.bcma_drv_cc* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %55 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BCMA_CC_CAP_PCTL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %62 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %61, i32 0, i32 3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i32 @bcma_err(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %69 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 16
  br i1 %74, label %75, label %123

75:                                               ; preds = %67
  %76 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %77 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %75
  %86 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %87 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %85
  %96 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %97 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %96, i32 0, i32 3
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %3, align 4
  %104 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %105 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %104, i32 0, i32 3
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %95, %85, %75
  %113 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %114 = load i32, i32* @BCMA_CC_GPIOTIMER, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @BCMA_CC_GPIOTIMER_ONTIME_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @BCMA_CC_GPIOTIMER_OFFTIME_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %117, %120
  %122 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %113, i32 %114, i32 %121)
  br label %123

123:                                              ; preds = %112, %67
  %124 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %125 = call i32 @bcma_chipco_watchdog_ticks_per_ms(%struct.bcma_drv_cc* %124)
  %126 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %127 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %129 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %123, %11
  ret void
}

declare dso_local i32 @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @bcma_chipco_watchdog_ticks_per_ms(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
