; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_enable_device(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_controller* @pci_bus_to_host(i32 %9)
  store %struct.pci_controller* %10, %struct.pci_controller** %6, align 8
  %11 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %12 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %13, align 8
  %15 = icmp ne i32 (%struct.pci_dev*)* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 %20(%struct.pci_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pci_enable_resources(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pci_enable_resources(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
