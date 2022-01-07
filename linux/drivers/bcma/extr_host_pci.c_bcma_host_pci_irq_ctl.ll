; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_irq_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_irq_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bcma_device = type { i32 }

@BCMA_HOSTTYPE_PCI = common dso_local global i64 0, align 8
@BCMA_PCI_IRQMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_host_pci_irq_ctl(%struct.bcma_bus* %0, %struct.bcma_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %4, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %22 = load i32, i32* @BCMA_PCI_IRQMASK, align 4
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %29 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = shl i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %46 = load i32, i32* @BCMA_PCI_IRQMASK, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @pci_write_config_dword(%struct.pci_dev* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %26, %16
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
