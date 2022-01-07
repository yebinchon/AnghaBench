; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/pci/extr_pci-common.c_pci_mmap_legacy_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/pci/extr_pci-common.c_pci_mmap_legacy_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_bus = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i32, i32 }
%struct.pci_controller = type { i32, i64, %struct.resource, i64, i64 }
%struct.resource = type { i32, i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"pci_mmap_legacy_page_range(%04x:%02x, %s @%llx..%llx)\0A\00", align 1
@pci_mmap_mem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@VM_SHARED = common dso_local global i32 0, align 4
@_IO_BASE = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" -> mapping phys %llx\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_legacy_page_range(%struct.pci_bus* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %15 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %14)
  store %struct.pci_controller* %15, %struct.pci_controller** %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %29 = call i32 @pci_domain_nr(%struct.pci_bus* %28)
  %30 = sext i32 %29 to i64
  %31 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @pci_mmap_mem, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33, i8* %38, i64 %40, i64 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @pci_mmap_mem, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %55 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VM_SHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = call i32 @shmem_zero_setup(%struct.vm_area_struct* %66)
  store i32 %67, i32* %4, align 4
  br label %158

68:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %158

69:                                               ; preds = %50
  %70 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %71 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  br label %125

77:                                               ; preds = %3
  %78 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %79 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @_IO_BASE, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %12, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %84, %85
  store i64 %86, i64* %13, align 8
  %87 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %88 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %87, i32 0, i32 2
  store %struct.resource* %88, %struct.resource** %11, align 8
  %89 = load %struct.resource*, %struct.resource** %11, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IORESOURCE_IO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %77
  %96 = load i32, i32* @ENXIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %158

98:                                               ; preds = %77
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.resource*, %struct.resource** %11, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %105, %107
  %109 = load %struct.resource*, %struct.resource** %11, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp ugt i64 %108, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104, %98
  %115 = load i32, i32* @ENXIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %158

117:                                              ; preds = %104
  %118 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %119 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %117, %69
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @PAGE_SHIFT, align 4
  %131 = ashr i32 %129, %130
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @pgprot_noncached(i32 %136)
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %151 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @remap_pfn_range(%struct.vm_area_struct* %140, i32 %143, i32 %146, i32 %153, i32 %156)
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %125, %114, %95, %68, %65
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @shmem_zero_setup(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
