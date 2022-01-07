; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32 }
%struct.sunxi_rsb_driver = type { i32 (%struct.sunxi_rsb_device*)* }
%struct.sunxi_rsb_device = type opaque
%struct.sunxi_rsb_device.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sunxi_rsb_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rsb_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sunxi_rsb_driver*, align 8
  %5 = alloca %struct.sunxi_rsb_device.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sunxi_rsb_driver* @to_sunxi_rsb_driver(i32 %10)
  store %struct.sunxi_rsb_driver* %11, %struct.sunxi_rsb_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.sunxi_rsb_device.0* @to_sunxi_rsb_device(%struct.device* %12)
  store %struct.sunxi_rsb_device.0* %13, %struct.sunxi_rsb_device.0** %5, align 8
  %14 = load %struct.sunxi_rsb_driver*, %struct.sunxi_rsb_driver** %4, align 8
  %15 = getelementptr inbounds %struct.sunxi_rsb_driver, %struct.sunxi_rsb_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.sunxi_rsb_device*)*, i32 (%struct.sunxi_rsb_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.sunxi_rsb_device*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.sunxi_rsb_device.0*, %struct.sunxi_rsb_device.0** %5, align 8
  %23 = getelementptr inbounds %struct.sunxi_rsb_device.0, %struct.sunxi_rsb_device.0* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @of_irq_get(i64 %36, i32 0)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sunxi_rsb_device.0*, %struct.sunxi_rsb_device.0** %5, align 8
  %52 = getelementptr inbounds %struct.sunxi_rsb_device.0, %struct.sunxi_rsb_device.0* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %21
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @of_clk_set_defaults(i64 %56, i32 0)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %53
  %63 = load %struct.sunxi_rsb_driver*, %struct.sunxi_rsb_driver** %4, align 8
  %64 = getelementptr inbounds %struct.sunxi_rsb_driver, %struct.sunxi_rsb_driver* %63, i32 0, i32 0
  %65 = load i32 (%struct.sunxi_rsb_device*)*, i32 (%struct.sunxi_rsb_device*)** %64, align 8
  %66 = load %struct.sunxi_rsb_device.0*, %struct.sunxi_rsb_device.0** %5, align 8
  %67 = bitcast %struct.sunxi_rsb_device.0* %66 to %struct.sunxi_rsb_device*
  %68 = call i32 %65(%struct.sunxi_rsb_device* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %60, %43, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sunxi_rsb_driver* @to_sunxi_rsb_driver(i32) #1

declare dso_local %struct.sunxi_rsb_device.0* @to_sunxi_rsb_device(%struct.device*) #1

declare dso_local i32 @of_irq_get(i64, i32) #1

declare dso_local i32 @of_clk_set_defaults(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
