; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_select.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_device = type { i64, i32 }
%struct.s3c_adc_client = type { i32, i32, i32 (%struct.s3c_adc_client*, i32)* }
%struct.TYPE_2__ = type { i32 }

@S3C2410_ADCCON = common dso_local global i64 0, align 8
@TYPE_ADCV1 = common dso_local global i32 0, align 4
@TYPE_ADCV2 = common dso_local global i32 0, align 4
@S3C2410_ADCCON_MUXMASK = common dso_local global i32 0, align 4
@S3C2410_ADCCON_STDBM = common dso_local global i32 0, align 4
@S3C2410_ADCCON_STARTMASK = common dso_local global i32 0, align 4
@TYPE_ADCV3 = common dso_local global i32 0, align 4
@S5P_ADCMUX = common dso_local global i64 0, align 8
@TYPE_ADCV11 = common dso_local global i32 0, align 4
@TYPE_ADCV12 = common dso_local global i32 0, align 4
@S3C2443_ADCMUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adc_device*, %struct.s3c_adc_client*)* @s3c_adc_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_adc_select(%struct.adc_device* %0, %struct.s3c_adc_client* %1) #0 {
  %3 = alloca %struct.adc_device*, align 8
  %4 = alloca %struct.s3c_adc_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adc_device* %0, %struct.adc_device** %3, align 8
  store %struct.s3c_adc_client* %1, %struct.s3c_adc_client** %4, align 8
  %7 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %8 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C2410_ADCCON, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %14 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @platform_get_device_id(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %20 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %19, i32 0, i32 2
  %21 = load i32 (%struct.s3c_adc_client*, i32)*, i32 (%struct.s3c_adc_client*, i32)** %20, align 8
  %22 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %23 = call i32 %21(%struct.s3c_adc_client* %22, i32 1)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TYPE_ADCV1, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TYPE_ADCV2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %2
  %32 = load i32, i32* @S3C2410_ADCCON_MUXMASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* @S3C2410_ADCCON_STDBM, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @S3C2410_ADCCON_STARTMASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %46 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TYPE_ADCV3, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %55 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 15
  %58 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %59 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @S5P_ADCMUX, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %91

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @TYPE_ADCV11, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @TYPE_ADCV12, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68, %64
  %73 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %74 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 15
  %77 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %78 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @S3C2443_ADCMUX, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  br label %90

83:                                               ; preds = %68
  %84 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %85 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @S3C2410_ADCCON_SELMUX(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %83, %72
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %36
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %95 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @S3C2410_ADCCON, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.TYPE_2__* @platform_get_device_id(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @S3C2410_ADCCON_SELMUX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
