; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci.c_leon_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci.c_leon_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.leon_pci_info = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.pci_bus = type { i32 }
%struct.pci_host_bridge = type { %struct.pci_bus*, i32, i32, i32, i64, %struct.leon_pci_info*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@resources = common dso_local global i32 0, align 4
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leon_pci_init(%struct.platform_device* %0, %struct.leon_pci_info* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.leon_pci_info*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.leon_pci_info* %1, %struct.leon_pci_info** %4, align 8
  %8 = load i32, i32* @resources, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = call %struct.pci_host_bridge* @pci_alloc_host_bridge(i32 0)
  store %struct.pci_host_bridge* %10, %struct.pci_host_bridge** %6, align 8
  %11 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %12 = icmp ne %struct.pci_host_bridge* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %16 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %15, i32 0, i32 4
  %17 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %18 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 4096
  %22 = call i32 @pci_add_resource_offset(i32* @resources, %struct.TYPE_5__* %16, i64 %21)
  %23 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %24 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %23, i32 0, i32 3
  %25 = call i32 @pci_add_resource(i32* @resources, %struct.TYPE_6__* %24)
  %26 = load i32, i32* @IORESOURCE_BUS, align 4
  %27 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %28 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %31 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %30, i32 0, i32 2
  %32 = call i32 @pci_add_resource(i32* @resources, %struct.TYPE_6__* %31)
  %33 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %34 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %33, i32 0, i32 7
  %35 = call i32 @list_splice_init(i32* @resources, i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %39 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %42 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %43 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %42, i32 0, i32 5
  store %struct.leon_pci_info* %41, %struct.leon_pci_info** %43, align 8
  %44 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %45 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %47 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %50 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @pci_common_swizzle, align 4
  %52 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %53 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.leon_pci_info*, %struct.leon_pci_info** %4, align 8
  %55 = getelementptr inbounds %struct.leon_pci_info, %struct.leon_pci_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %58 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %60 = call i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %14
  %64 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %65 = call i32 @pci_free_host_bridge(%struct.pci_host_bridge* %64)
  br label %73

66:                                               ; preds = %14
  %67 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %68 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %67, i32 0, i32 0
  %69 = load %struct.pci_bus*, %struct.pci_bus** %68, align 8
  store %struct.pci_bus* %69, %struct.pci_bus** %5, align 8
  %70 = call i32 (...) @pci_assign_unassigned_resources()
  %71 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %72 = call i32 @pci_bus_add_devices(%struct.pci_bus* %71)
  br label %73

73:                                               ; preds = %66, %63, %13
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.pci_host_bridge* @pci_alloc_host_bridge(i32) #1

declare dso_local i32 @pci_add_resource_offset(i32*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @pci_add_resource(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_free_host_bridge(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_assign_unassigned_resources(...) #1

declare dso_local i32 @pci_bus_add_devices(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
