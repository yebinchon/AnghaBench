; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_fixup_bridge_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_fixup_bridge_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.resource*, %struct.TYPE_6__* }
%struct.resource = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.pci_controller = type { %struct.resource*, %struct.resource, %struct.pnv_phb* }
%struct.pnv_phb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PCI_BRIDGE_RESOURCE_NUM = common dso_local global i32 0, align 4
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i64)* @pnv_pci_fixup_bridge_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_fixup_bridge_resources(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca %struct.pnv_phb*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %13 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %12)
  store %struct.pci_controller* %13, %struct.pci_controller** %5, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 2
  %16 = load %struct.pnv_phb*, %struct.pnv_phb** %15, align 8
  store %struct.pnv_phb* %16, %struct.pnv_phb** %6, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @pci_is_root_bus(%struct.TYPE_6__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @pci_is_root_bus(%struct.TYPE_6__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %135

36:                                               ; preds = %25, %2
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %132, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PCI_BRIDGE_RESOURCE_NUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %135

41:                                               ; preds = %37
  %42 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 %48
  store %struct.resource* %49, %struct.resource** %8, align 8
  %50 = load %struct.resource*, %struct.resource** %8, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.resource*, %struct.resource** %8, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %41
  br label %132

60:                                               ; preds = %54
  store %struct.resource* null, %struct.resource** %9, align 8
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @IORESOURCE_IO, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %71 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %70, i32 0, i32 1
  store %struct.resource* %71, %struct.resource** %9, align 8
  br label %109

72:                                               ; preds = %60
  %73 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %74 = load %struct.resource*, %struct.resource** %8, align 8
  %75 = call i64 @pnv_pci_is_m64(%struct.pnv_phb* %73, %struct.resource* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %84 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %90 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %89, i32 0, i32 0
  %91 = load %struct.resource*, %struct.resource** %90, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i64 1
  store %struct.resource* %92, %struct.resource** %9, align 8
  br label %108

93:                                               ; preds = %82, %77, %72
  %94 = load %struct.resource*, %struct.resource** %8, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = and i64 %96, %97
  %99 = load i64, i64* @IORESOURCE_MEM, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %104 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %103, i32 0, i32 0
  %105 = load %struct.resource*, %struct.resource** %104, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i64 0
  store %struct.resource* %106, %struct.resource** %9, align 8
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %102, %93
  br label %108

108:                                              ; preds = %107, %88
  br label %109

109:                                              ; preds = %108, %69
  %110 = load %struct.resource*, %struct.resource** %9, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.resource*, %struct.resource** %8, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.resource*, %struct.resource** %9, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.resource*, %struct.resource** %8, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %109
  %123 = load %struct.resource*, %struct.resource** %8, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 65536
  store i32 %126, i32* %124, align 8
  %127 = load %struct.resource*, %struct.resource** %8, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1048576
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %122, %109
  br label %132

132:                                              ; preds = %131, %59
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %37

135:                                              ; preds = %35, %37
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @pci_is_root_bus(%struct.TYPE_6__*) #1

declare dso_local i64 @pnv_pci_is_m64(%struct.pnv_phb*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
