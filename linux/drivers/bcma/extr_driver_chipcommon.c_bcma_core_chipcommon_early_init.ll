; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, i32, i8*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.bcma_bus* }
%struct.TYPE_3__ = type { i32 }
%struct.bcma_bus = type { i64 }

@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_CAP = common dso_local global i32 0, align 4
@BCMA_CC_CAP_EXT = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@BCMA_HOSTTYPE_SOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %4 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.bcma_bus*, %struct.bcma_bus** %7, align 8
  store %struct.bcma_bus* %8, %struct.bcma_bus** %3, align 8
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %10 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %16 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %15, i32 0, i32 5
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %19 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 11
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %27 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %28 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %26, i32 %27)
  %29 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %30 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %25, %14
  %32 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %33 = load i32, i32* @BCMA_CC_CAP, align 4
  %34 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %37 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %39 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 35
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %47 = load i32, i32* @BCMA_CC_CAP_EXT, align 4
  %48 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %46, i32 %47)
  %49 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %50 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %31
  %52 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %53 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %60 = call i32 @bcma_pmu_early_init(%struct.bcma_drv_cc* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %63 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BCMA_HOSTTYPE_SOC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %69 = call i32 @bcma_core_chipcommon_flash_detect(%struct.bcma_drv_cc* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %72 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_pmu_early_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_core_chipcommon_flash_detect(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
