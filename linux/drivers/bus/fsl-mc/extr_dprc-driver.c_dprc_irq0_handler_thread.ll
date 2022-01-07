; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_irq0_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_irq0_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_mc_device = type { i32, i32, %struct.TYPE_2__**, %struct.fsl_mc_io* }
%struct.TYPE_2__ = type { %struct.msi_desc* }
%struct.msi_desc = type { i64 }
%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_bus = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"DPRC IRQ %d triggered on CPU %u\0A\00", align 1
@FSL_MC_IS_DPRC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dprc_get_irq_status() failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"dprc_clear_irq_status() failed: %d\0A\00", align 1
@DPRC_IRQ_EVENT_OBJ_ADDED = common dso_local global i64 0, align 8
@DPRC_IRQ_EVENT_OBJ_REMOVED = common dso_local global i64 0, align 8
@DPRC_IRQ_EVENT_CONTAINER_DESTROYED = common dso_local global i64 0, align 8
@DPRC_IRQ_EVENT_OBJ_DESTROYED = common dso_local global i64 0, align 8
@DPRC_IRQ_EVENT_OBJ_CREATED = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"dprc_scan_objects() failed: %d\0A\00", align 1
@FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"IRQs needed (%u) exceed IRQs preallocated (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dprc_irq0_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dprc_irq0_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fsl_mc_device*, align 8
  %10 = alloca %struct.fsl_mc_bus*, align 8
  %11 = alloca %struct.fsl_mc_io*, align 8
  %12 = alloca %struct.msi_desc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.device*
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %16)
  store %struct.fsl_mc_device* %17, %struct.fsl_mc_device** %9, align 8
  %18 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %19 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %18)
  store %struct.fsl_mc_bus* %19, %struct.fsl_mc_bus** %10, align 8
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 3
  %22 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %21, align 8
  store %struct.fsl_mc_io* %22, %struct.fsl_mc_io** %11, align 8
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.msi_desc*, %struct.msi_desc** %28, align 8
  store %struct.msi_desc* %29, %struct.msi_desc** %12, align 8
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (...) @smp_processor_id()
  %33 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %35 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FSL_MC_IS_DPRC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %2
  %43 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %10, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %47 = icmp ne %struct.msi_desc* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %50 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %42
  br label %120

56:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  %57 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %11, align 8
  %58 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %59 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dprc_get_irq_status(%struct.fsl_mc_io* %57, i32 0, i32 %60, i32 0, i64* %7)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %120

68:                                               ; preds = %56
  %69 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %11, align 8
  %70 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %71 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @dprc_clear_irq_status(%struct.fsl_mc_io* %69, i32 0, i32 %72, i32 0, i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %120

81:                                               ; preds = %68
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @DPRC_IRQ_EVENT_OBJ_ADDED, align 8
  %84 = load i64, i64* @DPRC_IRQ_EVENT_OBJ_REMOVED, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @DPRC_IRQ_EVENT_CONTAINER_DESTROYED, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @DPRC_IRQ_EVENT_OBJ_DESTROYED, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @DPRC_IRQ_EVENT_OBJ_CREATED, align 8
  %91 = or i64 %89, %90
  %92 = and i64 %82, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %81
  %95 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %96 = call i32 @dprc_scan_objects(%struct.fsl_mc_device* %95, i32* %13)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %120

109:                                              ; preds = %94
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS, align 4
  %117 = call i32 @dev_warn(%struct.device* %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %109
  br label %119

119:                                              ; preds = %118, %81
  br label %120

120:                                              ; preds = %119, %108, %77, %64, %55
  %121 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %10, align 8
  %122 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %40
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dprc_get_irq_status(%struct.fsl_mc_io*, i32, i32, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dprc_clear_irq_status(%struct.fsl_mc_io*, i32, i32, i32, i64) #1

declare dso_local i32 @dprc_scan_objects(%struct.fsl_mc_device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
