; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.skd_device = type { i64, i64* }

@.str = private unnamed_addr constant [24 x i8] c"no device data for PCI\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SKD_MAX_BARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @skd_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_pci_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.skd_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.skd_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.skd_device* %9, %struct.skd_device** %7, align 8
  %10 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %11 = icmp ne %struct.skd_device* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %20 = call i32 @skd_stop_device(%struct.skd_device* %19)
  %21 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %22 = call i32 @skd_release_irq(%struct.skd_device* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %46, %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SKD_MAX_BARS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %29 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %38 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @iounmap(i64 %43)
  br label %45

45:                                               ; preds = %36, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_release_regions(%struct.pci_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_save_state(%struct.pci_dev* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_disable_device(%struct.pci_dev* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pci_choose_state(%struct.pci_dev* %65, i32 %66)
  %68 = call i32 @pci_set_power_state(%struct.pci_dev* %64, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.skd_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skd_stop_device(%struct.skd_device*) #1

declare dso_local i32 @skd_release_irq(%struct.skd_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
