; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_device = type { i32, i64, i32, i32, i32, %struct.platform_device*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"operating without regulator \22vdd\22 .\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get adc irq\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@s3c_adc_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to attach adc irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to get adc clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@S3C2410_ADCCON_PRSCEN = common dso_local global i32 0, align 4
@TYPE_ADCV12 = common dso_local global i32 0, align 4
@S3C2416_ADCCON_RESSEL = common dso_local global i32 0, align 4
@TYPE_ADCV2 = common dso_local global i32 0, align 4
@TYPE_ADCV3 = common dso_local global i32 0, align 4
@S3C64XX_ADCCON_RESSEL = common dso_local global i32 0, align 4
@S3C2410_ADCCON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"attached adc driver\0A\00", align 1
@adc_dev = common dso_local global %struct.adc_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adc_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.TYPE_2__* @platform_get_device_id(%struct.platform_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.adc_device* @devm_kzalloc(%struct.device* %16, i32 48, i32 %17)
  store %struct.adc_device* %18, %struct.adc_device** %5, align 8
  %19 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %20 = icmp ne %struct.adc_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %168

24:                                               ; preds = %1
  %25 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %26 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %25, i32 0, i32 6
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %30 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %29, i32 0, i32 5
  store %struct.platform_device* %28, %struct.platform_device** %30, align 8
  %31 = call i32 @S3C2410_ADCCON_PRSCVL(i32 49)
  %32 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %33 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @devm_regulator_get(%struct.device* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %37 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %39 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %47 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %168

50:                                               ; preds = %24
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call i64 @platform_get_irq(%struct.platform_device* %51, i32 1)
  %53 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %54 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %56 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %168

64:                                               ; preds = %50
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %67 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @s3c_adc_irq, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_name(%struct.device* %70)
  %72 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %73 = call i32 @devm_request_irq(%struct.device* %65, i64 %68, i32 %69, i32 0, i32 %71, %struct.adc_device* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %168

80:                                               ; preds = %64
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @devm_clk_get(%struct.device* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %84 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %86 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %94 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %168

97:                                               ; preds = %80
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call %struct.resource* @platform_get_resource(%struct.platform_device* %98, i32 %99, i32 0)
  store %struct.resource* %100, %struct.resource** %6, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.resource*, %struct.resource** %6, align 8
  %103 = call i32 @devm_ioremap_resource(%struct.device* %101, %struct.resource* %102)
  %104 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %105 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %107 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %113 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %168

116:                                              ; preds = %97
  %117 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %118 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @regulator_enable(i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %168

125:                                              ; preds = %116
  %126 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %127 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clk_prepare_enable(i32 %128)
  %130 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %131 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @S3C2410_ADCCON_PRSCEN, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @TYPE_ADCV12, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %125
  %139 = load i32, i32* @S3C2416_ADCCON_RESSEL, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %138, %125
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @TYPE_ADCV2, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @TYPE_ADCV3, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146, %142
  %151 = load i32, i32* @S3C64XX_ADCCON_RESSEL, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %157 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @S3C2410_ADCCON, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @writel(i32 %155, i32 %160)
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = call i32 @dev_info(%struct.device* %162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %166 = call i32 @platform_set_drvdata(%struct.platform_device* %164, %struct.adc_device* %165)
  %167 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  store %struct.adc_device* %167, %struct.adc_device** @adc_dev, align 8
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %154, %123, %111, %90, %76, %59, %43, %21
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_2__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.adc_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @S3C2410_ADCCON_PRSCVL(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.adc_device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
