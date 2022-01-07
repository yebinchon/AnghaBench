; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.pata_macio_priv = type { %struct.macio_dev*, %struct.TYPE_6__*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"No addresses for controller\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pata-macio\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot obtain taskfile resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pata-macio-dma\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot obtain DMA resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"No interrupts for controller, using 13\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*, %struct.of_device_id*)* @pata_macio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_attach(%struct.macio_dev* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macio_dev*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.pata_macio_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.macio_dev* %0, %struct.macio_dev** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %12 = call i32 @macio_resource_count(%struct.macio_dev* %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %16 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %23 = call i32 @macio_enable_devres(%struct.macio_dev* %22)
  %24 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %25 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.pata_macio_priv* @devm_kzalloc(%struct.TYPE_6__* %26, i32 24, i32 %27)
  store %struct.pata_macio_priv* %28, %struct.pata_macio_priv** %6, align 8
  %29 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %30 = icmp ne %struct.pata_macio_priv* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %21
  %35 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %36 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_node_get(i32 %39)
  %41 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %42 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %44 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %45 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %44, i32 0, i32 0
  store %struct.macio_dev* %43, %struct.macio_dev** %45, align 8
  %46 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %50 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %49, i32 0, i32 1
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %52 = call i64 @macio_request_resource(%struct.macio_dev* %51, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %34
  %55 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %112

61:                                               ; preds = %34
  %62 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %63 = call i32 @macio_resource_start(%struct.macio_dev* %62, i32 0)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %65 = call i32 @macio_resource_count(%struct.macio_dev* %64)
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %69 = call i64 @macio_request_resource(%struct.macio_dev* %68, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %78 = call i32 @macio_resource_start(%struct.macio_dev* %77, i32 1)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %82 = call i64 @macio_irq_count(%struct.macio_dev* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %86 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @dev_warn(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i64 @irq_create_mapping(i32* null, i32 13)
  store i64 %89, i64* %9, align 8
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %92 = call i64 @macio_irq(%struct.macio_dev* %91, i32 0)
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %95 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %94, i32 0, i32 0
  %96 = load %struct.macio_dev*, %struct.macio_dev** %95, align 8
  %97 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lock_media_bay(i32 %98)
  %100 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @pata_macio_common_init(%struct.pata_macio_priv* %100, i32 %101, i32 %102, i32 0, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %106 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %105, i32 0, i32 0
  %107 = load %struct.macio_dev*, %struct.macio_dev** %106, align 8
  %108 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @unlock_media_bay(i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %93, %54, %31, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @macio_resource_count(%struct.macio_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @macio_enable_devres(%struct.macio_dev*) #1

declare dso_local %struct.pata_macio_priv* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i64 @macio_request_resource(%struct.macio_dev*, i32, i8*) #1

declare dso_local i32 @macio_resource_start(%struct.macio_dev*, i32) #1

declare dso_local i64 @macio_irq_count(%struct.macio_dev*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @irq_create_mapping(i32*, i32) #1

declare dso_local i64 @macio_irq(%struct.macio_dev*, i32) #1

declare dso_local i32 @lock_media_bay(i32) #1

declare dso_local i32 @pata_macio_common_init(%struct.pata_macio_priv*, i32, i32, i32, i64) #1

declare dso_local i32 @unlock_media_bay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
