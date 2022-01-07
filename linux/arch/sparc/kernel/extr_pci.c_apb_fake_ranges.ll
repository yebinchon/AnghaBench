; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_apb_fake_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_apb_fake_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_bus = type { %struct.resource** }
%struct.resource = type { i32 }
%struct.pci_pbm_info = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@APB_IO_ADDRESS_MAP = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@APB_MEM_ADDRESS_MAP = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.pci_bus*, %struct.pci_pbm_info*)* @apb_fake_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apb_fake_ranges(%struct.pci_dev* %0, %struct.pci_bus* %1, %struct.pci_pbm_info* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca %struct.pci_bus_region, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %5, align 8
  store %struct.pci_pbm_info* %2, %struct.pci_pbm_info** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @APB_IO_ADDRESS_MAP, align 4
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %12, i32 %13, i32* %11)
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @apb_calc_first_last(i32 %15, i32* %9, i32* %10)
  %17 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load %struct.resource**, %struct.resource*** %18, align 8
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %19, i64 0
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %8, align 8
  %22 = load i32, i32* @IORESOURCE_IO, align 4
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 21
  %27 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 21
  %30 = add nsw i32 %29, 2097151
  %31 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = call i32 @pcibios_bus_to_resource(i32 %34, %struct.resource* %35, %struct.pci_bus_region* %7)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @APB_MEM_ADDRESS_MAP, align 4
  %39 = call i32 @pci_read_config_byte(%struct.pci_dev* %37, i32 %38, i32* %11)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @apb_calc_first_last(i32 %40, i32* %9, i32* %10)
  %42 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %43 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %42, i32 0, i32 0
  %44 = load %struct.resource**, %struct.resource*** %43, align 8
  %45 = getelementptr inbounds %struct.resource*, %struct.resource** %44, i64 1
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  store %struct.resource* %46, %struct.resource** %8, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 29
  %52 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 29
  %55 = add nsw i32 %54, 536870911
  %56 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.resource*, %struct.resource** %8, align 8
  %61 = call i32 @pcibios_bus_to_resource(i32 %59, %struct.resource* %60, %struct.pci_bus_region* %7)
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @apb_calc_first_last(i32, i32*, i32*) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
