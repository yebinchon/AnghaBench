; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_detect_chipset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_detect_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82801DB_12 = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@speedstep_chipset_dev = common dso_local global i32* null, align 8
@PCI_DEVICE_ID_INTEL_82801CA_12 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82801BA_10 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82815_MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hostbridge does not support speedstep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @speedstep_detect_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_detect_chipset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %4 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801DB_12, align 4
  %5 = load i32, i32* @PCI_ANY_ID, align 4
  %6 = load i32, i32* @PCI_ANY_ID, align 4
  %7 = call i8* @pci_get_subsys(i32 %3, i32 %4, i32 %5, i32 %6, i32* null)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @speedstep_chipset_dev, align 8
  %9 = load i32*, i32** @speedstep_chipset_dev, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 4, i32* %1, align 4
  br label %54

12:                                               ; preds = %0
  %13 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %14 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801CA_12, align 4
  %15 = load i32, i32* @PCI_ANY_ID, align 4
  %16 = load i32, i32* @PCI_ANY_ID, align 4
  %17 = call i8* @pci_get_subsys(i32 %13, i32 %14, i32 %15, i32 %16, i32* null)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @speedstep_chipset_dev, align 8
  %19 = load i32*, i32** @speedstep_chipset_dev, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 3, i32* %1, align 4
  br label %54

22:                                               ; preds = %12
  %23 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %24 = load i32, i32* @PCI_DEVICE_ID_INTEL_82801BA_10, align 4
  %25 = load i32, i32* @PCI_ANY_ID, align 4
  %26 = load i32, i32* @PCI_ANY_ID, align 4
  %27 = call i8* @pci_get_subsys(i32 %23, i32 %24, i32 %25, i32 %26, i32* null)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** @speedstep_chipset_dev, align 8
  %29 = load i32*, i32** @speedstep_chipset_dev, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %22
  %32 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %33 = load i32, i32* @PCI_DEVICE_ID_INTEL_82815_MC, align 4
  %34 = load i32, i32* @PCI_ANY_ID, align 4
  %35 = load i32, i32* @PCI_ANY_ID, align 4
  %36 = call i8* @pci_get_subsys(i32 %32, i32 %33, i32 %34, i32 %35, i32* null)
  %37 = bitcast i8* %36 to %struct.pci_dev*
  store %struct.pci_dev* %37, %struct.pci_dev** %2, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = icmp ne %struct.pci_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 2, i32* %1, align 4
  br label %54

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 5
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** @speedstep_chipset_dev, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_dev_put(%struct.pci_dev* %48)
  store i32 0, i32* %1, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_dev_put(%struct.pci_dev* %51)
  store i32 2, i32* %1, align 4
  br label %54

53:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %50, %46, %40, %21, %11
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i8* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
