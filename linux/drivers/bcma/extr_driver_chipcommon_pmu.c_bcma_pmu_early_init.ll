; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.bcma_bus* }
%struct.TYPE_4__ = type { i32 }
%struct.bcma_bus = type { i32 }

@BCMA_CC_CAP_EXT_AOB_PRESENT = common dso_local global i32 0, align 4
@BCMA_CORE_PMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't find expected PMU core\00", align 1
@BCMA_CC_PMU_CAP = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CAP_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Found rev %u PMU (capabilities 0x%08X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_pmu_early_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %5 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  store %struct.bcma_bus* %9, %struct.bcma_bus** %3, align 8
  %10 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %11 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 35
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %19 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BCMA_CC_CAP_EXT_AOB_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %26 = load i32, i32* @BCMA_CORE_PMU, align 4
  %27 = call %struct.TYPE_6__* @bcma_find_core(%struct.bcma_bus* %25, i32 %26)
  %28 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %29 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %32 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %38 = call i32 @bcma_warn(%struct.bcma_bus* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %24
  br label %40

40:                                               ; preds = %39, %17, %1
  %41 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %42 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %48 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %51 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %52, align 8
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %55 = load i32, i32* @BCMA_CC_PMU_CAP, align 4
  %56 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @BCMA_CC_PMU_CAP_REVISION, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %61 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %64 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %65 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @bcma_debug(%struct.bcma_bus* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.TYPE_6__* @bcma_find_core(%struct.bcma_bus*, i32) #1

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_pmu_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
