; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_ibs.c_setup_ibs_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_ibs.c_setup_ibs_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_10H_NB_MISC = common dso_local global i32 0, align 4
@IBSCTL = common dso_local global i32 0, align 4
@IBSCTL_LVT_OFFSET_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to setup IBS LVT offset, IBSCTL = 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No CPU node configured for IBS\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @setup_ibs_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ibs_ctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %9 = load i32, i32* @PCI_DEVICE_ID_AMD_10H_NB_MISC, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.pci_dev* @pci_get_device(i32 %8, i32 %9, %struct.pci_dev* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %41

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @IBSCTL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IBSCTL_LVT_OFFSET_VALID, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @pci_write_config_dword(%struct.pci_dev* %18, i32 %19, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* @IBSCTL, align 4
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IBSCTL_LVT_OFFSET_VALID, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_dev_put(%struct.pci_dev* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39
  br i1 true, label %7, label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
