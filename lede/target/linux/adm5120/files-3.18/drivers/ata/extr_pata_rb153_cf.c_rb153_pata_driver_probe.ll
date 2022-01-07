; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/ata/extr_pata_rb153_cf.c_rb153_pata_driver_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/ata/extr_pata_rb153_cf.c_rb153_pata_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }
%struct.ata_host = type { %struct.rb153_cf_info* }
%struct.rb153_cf_info = type { i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no IOMEM resource found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no IRQ resource found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"no GPIO found for irq%d\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"GPIO request failed\0A\00", align 1
@RB153_CF_MAXPORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to set GPIO direction, err=%d\0A\00", align 1
@rb153_pata_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@rb153_pata_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb153_pata_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb153_pata_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca %struct.rb153_cf_info*, align 8
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
  br label %137

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ule i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %137

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @irq_to_gpio(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %137

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DRV_NAME, align 4
  %47 = call i32 @gpio_request(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %137

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* @RB153_CF_MAXPORTS, align 4
  %59 = call %struct.ata_host* @ata_host_alloc(i32* %57, i32 %58)
  store %struct.ata_host* %59, %struct.ata_host** %7, align 8
  %60 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %61 = icmp ne %struct.ata_host* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %137

65:                                               ; preds = %55
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %68 = call i32 @platform_set_drvdata(%struct.platform_device* %66, %struct.ata_host* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.rb153_cf_info* @devm_kzalloc(i32* %70, i32 12, i32 %71)
  store %struct.rb153_cf_info* %72, %struct.rb153_cf_info** %8, align 8
  %73 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %74 = icmp ne %struct.rb153_cf_info* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %137

78:                                               ; preds = %65
  %79 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %80 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %81 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %80, i32 0, i32 0
  store %struct.rb153_cf_info* %79, %struct.rb153_cf_info** %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %84 = getelementptr inbounds %struct.rb153_cf_info, %struct.rb153_cf_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %87 = getelementptr inbounds %struct.rb153_cf_info, %struct.rb153_cf_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.resource*, %struct.resource** %6, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.resource*, %struct.resource** %6, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = add nsw i64 %99, 1
  %101 = call i32 @devm_ioremap_nocache(i32* %89, i64 %92, i64 %100)
  %102 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %103 = getelementptr inbounds %struct.rb153_cf_info, %struct.rb153_cf_info* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.rb153_cf_info*, %struct.rb153_cf_info** %8, align 8
  %105 = getelementptr inbounds %struct.rb153_cf_info, %struct.rb153_cf_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %78
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %137

111:                                              ; preds = %78
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @gpio_direction_input(i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %133

121:                                              ; preds = %111
  %122 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %123 = call i32 @rb153_pata_setup_port(%struct.ata_host* %122)
  %124 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @rb153_pata_irq_handler, align 4
  %127 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %128 = call i32 @ata_host_activate(%struct.ata_host* %124, i32 %125, i32 %126, i32 %127, i32* @rb153_pata_sht)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %137

133:                                              ; preds = %131, %116
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @gpio_free(i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %132, %108, %75, %62, %50, %37, %26, %15
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ata_host*) #1

declare dso_local %struct.rb153_cf_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i64, i64) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @rb153_pata_setup_port(%struct.ata_host*) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
