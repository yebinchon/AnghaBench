; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_pci.c_pcibios_scanbus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_pci.c_pcibios_scanbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32, i32, %struct.TYPE_8__*, i64, i32, i64, i64, %struct.resource* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.resource = type { i32 }
%struct.pci_host_bridge = type { i32, %struct.TYPE_8__*, i32, i32, i32, %struct.pci_channel*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@pcibios_scanbus.next_busno = internal global i32 0, align 4
@pcibios_scanbus.need_domain_info = internal global i32 0, align 4
@resources = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@pcibios_map_platform_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_channel*)* @pcibios_scanbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_scanbus(%struct.pci_channel* %0) #0 {
  %2 = alloca %struct.pci_channel*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_channel* %0, %struct.pci_channel** %2, align 8
  %8 = load i32, i32* @resources, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = call %struct.pci_host_bridge* @pci_alloc_host_bridge(i32 0)
  store %struct.pci_host_bridge* %10, %struct.pci_host_bridge** %7, align 8
  %11 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %12 = icmp ne %struct.pci_host_bridge* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %138

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %62, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %18 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %23 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %22, i32 0, i32 7
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 %26
  store %struct.resource* %27, %struct.resource** %3, align 8
  store i64 0, i64* %4, align 8
  %28 = load %struct.resource*, %struct.resource** %3, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %62

35:                                               ; preds = %21
  %36 = load %struct.resource*, %struct.resource** %3, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IORESOURCE_IO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %44 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  br label %58

46:                                               ; preds = %35
  %47 = load %struct.resource*, %struct.resource** %3, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %55 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.resource*, %struct.resource** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @pci_add_resource_offset(i32* @resources, %struct.resource* %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %67 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %66, i32 0, i32 7
  %68 = call i32 @list_splice_init(i32* @resources, i32* %67)
  %69 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %70 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %73 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %74 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %73, i32 0, i32 5
  store %struct.pci_channel* %72, %struct.pci_channel** %74, align 8
  %75 = load i32, i32* @pcibios_scanbus.next_busno, align 4
  %76 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %77 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %79 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %82 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @pci_common_swizzle, align 4
  %84 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %85 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @pcibios_map_platform_irq, align 4
  %87 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %88 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %90 = call i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %65
  %94 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %95 = call i32 @pci_free_host_bridge(%struct.pci_host_bridge* %94)
  br label %138

96:                                               ; preds = %65
  %97 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %98 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %101 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %100, i32 0, i32 2
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %101, align 8
  %102 = load i32, i32* @pcibios_scanbus.need_domain_info, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %96
  %105 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %106 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %104, %96
  %110 = phi i1 [ true, %96 ], [ %108, %104 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* @pcibios_scanbus.need_domain_info, align 4
  %112 = load i32, i32* @pcibios_scanbus.need_domain_info, align 4
  %113 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %114 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %116 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @pcibios_scanbus.next_busno, align 4
  %122 = load i32, i32* @pcibios_scanbus.next_busno, align 4
  %123 = icmp sgt i32 %122, 224
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  store i32 0, i32* @pcibios_scanbus.next_busno, align 4
  store i32 1, i32* @pcibios_scanbus.need_domain_info, align 4
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %127 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = call i32 @pci_bus_size_bridges(%struct.TYPE_8__* %128)
  %130 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %131 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = call i32 @pci_bus_assign_resources(%struct.TYPE_8__* %132)
  %134 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %135 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i32 @pci_bus_add_devices(%struct.TYPE_8__* %136)
  br label %138

138:                                              ; preds = %125, %93, %13
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.pci_host_bridge* @pci_alloc_host_bridge(i32) #1

declare dso_local i32 @pci_add_resource_offset(i32*, %struct.resource*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_free_host_bridge(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_bus_size_bridges(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_bus_assign_resources(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
