; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.skd_device = type { i64, i64* }

@.str = private unnamed_addr constant [24 x i8] c"no device data for PCI\0A\00", align 1
@SKD_MAX_BARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @skd_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.skd_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.skd_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.skd_device* %6, %struct.skd_device** %4, align 8
  %7 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %8 = icmp ne %struct.skd_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_err(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %15 = call i32 @skd_stop_device(%struct.skd_device* %14)
  %16 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %17 = call i32 @skd_release_irq(%struct.skd_device* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %41, %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SKD_MAX_BARS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %24 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @iounmap(i64 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %46 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %54 = call i32 @skd_destruct(%struct.skd_device* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_release_regions(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_disable_device(%struct.pci_dev* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = call i32 @pci_set_drvdata(%struct.pci_dev* %59, i32* null)
  br label %61

61:                                               ; preds = %52, %9
  ret void
}

declare dso_local %struct.skd_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skd_stop_device(%struct.skd_device*) #1

declare dso_local i32 @skd_release_irq(%struct.skd_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @skd_destruct(%struct.skd_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
