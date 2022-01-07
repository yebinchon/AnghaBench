; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-lantiq.c_ltq_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-lantiq.c_ltq_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ltq_pci_membase = common dso_local global i32 0, align 4
@ltq_pci_mapped_cfg = common dso_local global i32 0, align 4
@pci_controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %7 = call i32 @pci_clear_flags(i32 %6)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 1)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = call i32 @devm_ioremap_resource(%struct.TYPE_2__* %12, %struct.resource* %13)
  store i32 %14, i32* @ltq_pci_membase, align 4
  %15 = load i32, i32* @ltq_pci_membase, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ltq_pci_membase, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %4, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_2__* %26, %struct.resource* %27)
  store i32 %28, i32* @ltq_pci_mapped_cfg, align 4
  %29 = load i32, i32* @ltq_pci_mapped_cfg, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @ltq_pci_mapped_cfg, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @ltq_pci_startup(%struct.platform_device* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_load_of_ranges(i32* @pci_controller, i32 %41)
  %43 = call i32 @register_pci_controller(i32* @pci_controller)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %32, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pci_clear_flags(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_2__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ltq_pci_startup(%struct.platform_device*) #1

declare dso_local i32 @pci_load_of_ranges(i32*, i32) #1

declare dso_local i32 @register_pci_controller(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
