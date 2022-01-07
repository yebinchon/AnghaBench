; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-raspberrypi.c_raspberrypi_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-raspberrypi.c_raspberrypi_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.rpi_firmware = type { i32 }
%struct.raspberrypi_clk = type { i32, %struct.rpi_firmware*, %struct.device* }

@.str = private unnamed_addr constant [29 x i8] c"raspberrypi,bcm2835-firmware\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to initialize pllb, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"raspberrypi-cpufreq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @raspberrypi_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raspberrypi_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.rpi_firmware*, align 8
  %7 = alloca %struct.raspberrypi_clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node* %20)
  store %struct.rpi_firmware* %21, %struct.rpi_firmware** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load %struct.rpi_firmware*, %struct.rpi_firmware** %6, align 8
  %25 = icmp ne %struct.rpi_firmware* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.raspberrypi_clk* @devm_kzalloc(%struct.device* %30, i32 24, i32 %31)
  store %struct.raspberrypi_clk* %32, %struct.raspberrypi_clk** %7, align 8
  %33 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %34 = icmp ne %struct.raspberrypi_clk* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %41 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %40, i32 0, i32 2
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.rpi_firmware*, %struct.rpi_firmware** %6, align 8
  %43 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %44 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %43, i32 0, i32 1
  store %struct.rpi_firmware* %42, %struct.rpi_firmware** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.raspberrypi_clk* %46)
  %48 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %49 = call i32 @raspberrypi_register_pllb(%struct.raspberrypi_clk* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %38
  %58 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %59 = call i32 @raspberrypi_register_pllb_arm(%struct.raspberrypi_clk* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @platform_device_register_data(%struct.device* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32* null, i32 0)
  %67 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %7, align 8
  %68 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %62, %52, %35, %26, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.raspberrypi_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.raspberrypi_clk*) #1

declare dso_local i32 @raspberrypi_register_pllb(%struct.raspberrypi_clk*) #1

declare dso_local i32 @raspberrypi_register_pllb_arm(%struct.raspberrypi_clk*) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
