; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_mmap_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_mmap_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.bin_attribute = type { %struct.resource* }
%struct.resource = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.pci_dev = type { i32, i32, %struct.resource* }
%struct.pci_bus_region = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@pci_mmap_mem = common dso_local global i32 0, align 4
@pci_mmap_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*, i32)* @pci_mmap_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mmap_resource(%struct.kobject* %0, %struct.bin_attribute* %1, %struct.vm_area_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.bin_attribute*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_bus_region, align 4
  %14 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.bin_attribute* %1, %struct.bin_attribute** %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.kobject*, %struct.kobject** %6, align 8
  %16 = call i32 @kobj_to_dev(%struct.kobject* %15)
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %10, align 8
  %18 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %19 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %18, i32 0, i32 0
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %20, %struct.resource** %11, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.resource*, %struct.resource** %11, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %29, i64 %31
  %33 = icmp eq %struct.resource* %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %21

39:                                               ; preds = %34, %21
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %110

46:                                               ; preds = %39
  %47 = load %struct.resource*, %struct.resource** %11, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @iomem_is_exclusive(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %110

62:                                               ; preds = %53, %46
  %63 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @__pci_mmap_fits(%struct.pci_dev* %63, i32 %64, %struct.vm_area_struct* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %110

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %11, align 8
  %77 = call i32 @pcibios_resource_to_bus(i32 %75, %struct.pci_bus_region* %13, %struct.resource* %76)
  %78 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 5, i32 0
  %85 = sub nsw i32 %80, %84
  %86 = ashr i32 %79, %85
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.resource*, %struct.resource** %11, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %72
  %98 = load i32, i32* @pci_mmap_mem, align 4
  br label %101

99:                                               ; preds = %72
  %100 = load i32, i32* @pci_mmap_io, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %12, align 4
  %103 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @hose_mmap_page_range(i32 %105, %struct.vm_area_struct* %106, i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %101, %69, %59, %43
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i64 @iomem_is_exclusive(i32) #1

declare dso_local i32 @__pci_mmap_fits(%struct.pci_dev*, i32, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @hose_mmap_page_range(i32, %struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
