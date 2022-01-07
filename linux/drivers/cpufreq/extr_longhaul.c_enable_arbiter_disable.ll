; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_enable_arbiter_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_enable_arbiter_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_VIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8601_0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8605_0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_862X_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't enable access to port 0x22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @enable_arbiter_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_arbiter_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  store i32 120, i32* %4, align 4
  %6 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %7 = load i32, i32* @PCI_DEVICE_ID_VIA_8601_0, align 4
  %8 = call %struct.pci_dev* @pci_get_device(i32 %6, i32 %7, i32* null)
  store %struct.pci_dev* %8, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = icmp eq %struct.pci_dev* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %13 = load i32, i32* @PCI_DEVICE_ID_VIA_8605_0, align 4
  %14 = call %struct.pci_dev* @pci_get_device(i32 %12, i32 %13, i32* null)
  store %struct.pci_dev* %14, %struct.pci_dev** %2, align 8
  br label %15

15:                                               ; preds = %11, %0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = icmp eq %struct.pci_dev* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  store i32 118, i32* %4, align 4
  %19 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %20 = load i32, i32* @PCI_DEVICE_ID_VIA_862X_0, align 4
  %21 = call %struct.pci_dev* @pci_get_device(i32 %19, i32 %20, i32* null)
  store %struct.pci_dev* %21, %struct.pci_dev** %2, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = icmp eq %struct.pci_dev* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %26 = call %struct.pci_dev* @pci_get_device(i32 %25, i32 29273, i32* null)
  store %struct.pci_dev* %26, %struct.pci_dev** %2, align 8
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 %33, i32* %5)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, 128
  store i32 %40, i32* %5, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_write_config_byte(%struct.pci_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %45, i32 %46, i32* %5)
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %38
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %38
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_dev_put(%struct.pci_dev* %55)
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %1, align 4
  br label %59

58:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
