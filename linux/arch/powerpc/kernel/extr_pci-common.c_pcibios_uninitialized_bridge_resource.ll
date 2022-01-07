; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_uninitialized_bridge_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_uninitialized_bridge_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i32 }
%struct.pci_controller = type { i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.pci_bus_region = type { i64 }

@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@_IO_BASE = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, %struct.resource*)* @pcibios_uninitialized_bridge_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcibios_uninitialized_bridge_resource(%struct.pci_bus* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_bus_region, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %12)
  store %struct.pci_controller* %13, %struct.pci_controller** %6, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %18 = call i64 @pci_has_flag(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @pcibios_resource_to_bus(i32 %31, %struct.pci_bus_region* %9, %struct.resource* %32)
  %34 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %113

38:                                               ; preds = %28
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = load i32, i32* @PCI_COMMAND, align 4
  %41 = call i32 @pci_read_config_word(%struct.pci_dev* %39, i32 %40, i32* %10)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %113

47:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %82, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  %52 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %53 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %51
  %64 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %65 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %73 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %113

81:                                               ; preds = %63, %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %48

85:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %113

86:                                               ; preds = %21
  %87 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %88 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @_IO_BASE, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %89, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 4294967295
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %113

103:                                              ; preds = %86
  %104 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %105 = load i32, i32* @PCI_COMMAND, align 4
  %106 = call i32 @pci_read_config_word(%struct.pci_dev* %104, i32 %105, i32* %10)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @PCI_COMMAND_IO, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %113

112:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %111, %102, %85, %80, %46, %37, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i64 @pci_has_flag(i32) #1

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
