; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rb532_cf.c_rb532_pata_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rb532_cf.c_rb532_pata_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.resource = type { i32 }
%struct.ata_host = type { %struct.rb532_cf_info* }
%struct.rb532_cf_info = type { i32, i32, %struct.gpio_desc* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no IOMEM resource found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no IRQ resource found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"no GPIO found for irq%d\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@RB500_CF_MAXPORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rb532_pata_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@rb532_pata_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb532_pata_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb532_pata_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca %struct.rb532_cf_info*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %110

32:                                               ; preds = %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GPIOD_IN, align 4
  %36 = call %struct.gpio_desc* @devm_gpiod_get(i32* %34, i32* null, i32 %35)
  store %struct.gpio_desc* %36, %struct.gpio_desc** %5, align 8
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %38 = call i64 @IS_ERR(%struct.gpio_desc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %46 = call i32 @PTR_ERR(%struct.gpio_desc* %45)
  store i32 %46, i32* %2, align 4
  br label %110

47:                                               ; preds = %32
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %49 = load i32, i32* @DRV_NAME, align 4
  %50 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %48, i32 %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* @RB500_CF_MAXPORTS, align 4
  %54 = call %struct.ata_host* @ata_host_alloc(i32* %52, i32 %53)
  store %struct.ata_host* %54, %struct.ata_host** %7, align 8
  %55 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %56 = icmp ne %struct.ata_host* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %110

60:                                               ; preds = %47
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.rb532_cf_info* @devm_kzalloc(i32* %62, i32 16, i32 %63)
  store %struct.rb532_cf_info* %64, %struct.rb532_cf_info** %8, align 8
  %65 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %66 = icmp ne %struct.rb532_cf_info* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %110

70:                                               ; preds = %60
  %71 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %72 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %73 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %72, i32 0, i32 0
  store %struct.rb532_cf_info* %71, %struct.rb532_cf_info** %73, align 8
  %74 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %75 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %76 = getelementptr inbounds %struct.rb532_cf_info, %struct.rb532_cf_info* %75, i32 0, i32 2
  store %struct.gpio_desc* %74, %struct.gpio_desc** %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %79 = getelementptr inbounds %struct.rb532_cf_info, %struct.rb532_cf_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.resource*, %struct.resource** %6, align 8
  %86 = call i32 @resource_size(%struct.resource* %85)
  %87 = call i32 @devm_ioremap_nocache(i32* %81, i32 %84, i32 %86)
  %88 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %89 = getelementptr inbounds %struct.rb532_cf_info, %struct.rb532_cf_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.rb532_cf_info*, %struct.rb532_cf_info** %8, align 8
  %91 = getelementptr inbounds %struct.rb532_cf_info, %struct.rb532_cf_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %70
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %110

97:                                               ; preds = %70
  %98 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %99 = call i32 @rb532_pata_setup_ports(%struct.ata_host* %98)
  %100 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @rb532_pata_irq_handler, align 4
  %103 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %104 = call i32 @ata_host_activate(%struct.ata_host* %100, i32 %101, i32 %102, i32 %103, i32* @rb532_pata_sht)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %107, %94, %67, %57, %40, %26, %15
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_set_consumer_name(%struct.gpio_desc*, i32) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local %struct.rb532_cf_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @rb532_pata_setup_ports(%struct.ata_host*) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
