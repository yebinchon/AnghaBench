; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.moxtet = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No IRQ resource found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed creating debugfs entries: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @moxtet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.moxtet*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call i32 @spi_setup(%struct.spi_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %99

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.moxtet* @devm_kzalloc(%struct.TYPE_6__* %14, i32 32, i32 %15)
  store %struct.moxtet* %16, %struct.moxtet** %4, align 8
  %17 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %18 = icmp ne %struct.moxtet* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %99

22:                                               ; preds = %12
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %26 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %25, i32 0, i32 1
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.moxtet* %28)
  %30 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %31 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %30, i32 0, i32 3
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %34 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @of_irq_get(i32 %37, i32 0)
  %39 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %40 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %42 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %22
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %99

50:                                               ; preds = %22
  %51 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %52 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %57 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %99

62:                                               ; preds = %50
  %63 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %64 = call i32 @moxtet_find_topology(%struct.moxtet* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %99

69:                                               ; preds = %62
  %70 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %71 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %77 = call i32 @moxtet_irq_setup(%struct.moxtet* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %99

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %85 = call i32 @of_register_moxtet_devices(%struct.moxtet* %84)
  %86 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %87 = call i32 @moxtet_register_devices_from_topology(%struct.moxtet* %86)
  %88 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %89 = call i32 @moxtet_register_debugfs(%struct.moxtet* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %94 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @dev_warn(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %83
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %80, %67, %55, %47, %19, %10
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.moxtet* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.moxtet*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_irq_get(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @moxtet_find_topology(%struct.moxtet*) #1

declare dso_local i32 @moxtet_irq_setup(%struct.moxtet*) #1

declare dso_local i32 @of_register_moxtet_devices(%struct.moxtet*) #1

declare dso_local i32 @moxtet_register_devices_from_topology(%struct.moxtet*) #1

declare dso_local i32 @moxtet_register_debugfs(%struct.moxtet*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
