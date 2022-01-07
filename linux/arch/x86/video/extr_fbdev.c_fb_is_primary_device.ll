; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/video/extr_fbdev.c_fb_is_primary_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/video/extr_fbdev.c_fb_is_primary_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.device* }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_is_primary_device(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = call %struct.pci_dev* (...) @vga_default_device()
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_is_pci(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %45

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.pci_dev* @to_pci_dev(%struct.device* %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = icmp eq %struct.pci_dev* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %45

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %45

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %32, align 8
  %34 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %33, i64 %35
  store %struct.resource* %36, %struct.resource** %7, align 8
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %29, %28, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
