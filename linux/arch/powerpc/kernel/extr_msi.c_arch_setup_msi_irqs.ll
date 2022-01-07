; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_msi.c_arch_setup_msi_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_msi.c_arch_setup_msi_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*, i32, i32)*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"msi: Platform doesn't provide MSI callbacks.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_msi_irqs(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_controller* @pci_bus_to_host(i32 %11)
  store %struct.pci_controller* %12, %struct.pci_controller** %8, align 8
  %13 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %14 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.pci_dev*, i32, i32)*, i32 (%struct.pci_dev*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.pci_dev*, i32, i32)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %20 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18, %3
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %45

36:                                               ; preds = %32, %28
  %37 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %38 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.pci_dev*, i32, i32)*, i32 (%struct.pci_dev*, i32, i32)** %39, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %40(%struct.pci_dev* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %35, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
