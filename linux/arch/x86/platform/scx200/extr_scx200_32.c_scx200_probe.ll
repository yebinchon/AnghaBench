; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/scx200/extr_scx200_32.c_scx200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/scx200/extr_scx200_32.c_scx200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.pci_device_id = type { i32 }

@PCI_DEVICE_ID_NS_SCx200_BRIDGE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NS_SC1100_BRIDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GPIO base 0x%x\0A\00", align 1
@SCx200_GPIO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"NatSemi SCx200 GPIO\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"can't allocate I/O for GPIOs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@scx200_gpio_base = common dso_local global i32 0, align 4
@SCx200_CB_BASE_FIXED = common dso_local global i32 0, align 4
@scx200_cb_base = common dso_local global i32 0, align 4
@SCx200_CBA_SCRATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Configuration Block not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Configuration Block base 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @scx200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scx200_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCI_DEVICE_ID_NS_SCx200_BRIDGE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_DEVICE_ID_NS_SC1100_BRIDGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12, %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_resource_start(%struct.pci_dev* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SCx200_GPIO_SIZE, align 4
  %25 = call i32 @request_region(i32 %23, i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* @scx200_gpio_base, align 4
  %33 = call i32 (...) @scx200_init_shadow()
  br label %57

34:                                               ; preds = %12
  %35 = load i32, i32* @SCx200_CB_BASE_FIXED, align 4
  %36 = call i64 @scx200_cb_probe(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @SCx200_CB_BASE_FIXED, align 4
  store i32 %39, i32* @scx200_cb_base, align 4
  br label %54

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @SCx200_CBA_SCRATCH, align 4
  %43 = call i32 @pci_read_config_dword(%struct.pci_dev* %41, i32 %42, i32* %6)
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @scx200_cb_probe(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* @scx200_cb_base, align 4
  br label %53

49:                                               ; preds = %40
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* @scx200_cb_base, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %31
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @scx200_init_shadow(...) #1

declare dso_local i64 @scx200_cb_probe(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
