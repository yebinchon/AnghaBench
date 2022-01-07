; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_adc.c_s3c_adc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_adc_client = type { i32, void (%struct.s3c_adc_client*, i32)*, void (%struct.s3c_adc_client*, i32, i32, i32*)*, %struct.platform_device* }
%struct.platform_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.s3c_adc_client* @s3c_adc_register(%struct.platform_device* %0, void (%struct.s3c_adc_client*, i32)* %1, void (%struct.s3c_adc_client*, i32, i32, i32*)* %2, i32 %3) #0 {
  %5 = alloca %struct.s3c_adc_client*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca void (%struct.s3c_adc_client*, i32)*, align 8
  %8 = alloca void (%struct.s3c_adc_client*, i32, i32, i32*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.s3c_adc_client*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store void (%struct.s3c_adc_client*, i32)* %1, void (%struct.s3c_adc_client*, i32)** %7, align 8
  store void (%struct.s3c_adc_client*, i32, i32, i32*)* %2, void (%struct.s3c_adc_client*, i32, i32, i32*)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = icmp ne %struct.platform_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load void (%struct.s3c_adc_client*, i32)*, void (%struct.s3c_adc_client*, i32)** %7, align 8
  %17 = icmp ne void (%struct.s3c_adc_client*, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store void (%struct.s3c_adc_client*, i32)* @s3c_adc_default_select, void (%struct.s3c_adc_client*, i32)** %7, align 8
  br label %19

19:                                               ; preds = %18, %4
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = icmp ne %struct.platform_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.s3c_adc_client* @ERR_PTR(i32 %24)
  store %struct.s3c_adc_client* %25, %struct.s3c_adc_client** %5, align 8
  br label %49

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.s3c_adc_client* @kzalloc(i32 32, i32 %27)
  store %struct.s3c_adc_client* %28, %struct.s3c_adc_client** %10, align 8
  %29 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  %30 = icmp ne %struct.s3c_adc_client* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.s3c_adc_client* @ERR_PTR(i32 %33)
  store %struct.s3c_adc_client* %34, %struct.s3c_adc_client** %5, align 8
  br label %49

35:                                               ; preds = %26
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  %38 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %37, i32 0, i32 3
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  %41 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load void (%struct.s3c_adc_client*, i32)*, void (%struct.s3c_adc_client*, i32)** %7, align 8
  %43 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  %44 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %43, i32 0, i32 1
  store void (%struct.s3c_adc_client*, i32)* %42, void (%struct.s3c_adc_client*, i32)** %44, align 8
  %45 = load void (%struct.s3c_adc_client*, i32, i32, i32*)*, void (%struct.s3c_adc_client*, i32, i32, i32*)** %8, align 8
  %46 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  %47 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %46, i32 0, i32 2
  store void (%struct.s3c_adc_client*, i32, i32, i32*)* %45, void (%struct.s3c_adc_client*, i32, i32, i32*)** %47, align 8
  %48 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %10, align 8
  store %struct.s3c_adc_client* %48, %struct.s3c_adc_client** %5, align 8
  br label %49

49:                                               ; preds = %35, %31, %22
  %50 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %5, align 8
  ret %struct.s3c_adc_client* %50
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local void @s3c_adc_default_select(%struct.s3c_adc_client*, i32) #1

declare dso_local %struct.s3c_adc_client* @ERR_PTR(i32) #1

declare dso_local %struct.s3c_adc_client* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
