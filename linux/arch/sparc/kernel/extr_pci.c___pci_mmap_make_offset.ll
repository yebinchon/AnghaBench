; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c___pci_mmap_make_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c___pci_mmap_make_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32, i64, i64 }
%struct.vm_area_struct = type { i64, i64, i64 }

@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@pci_mmap_mem = common dso_local global i32 0, align 4
@pci_mmap_io = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.vm_area_struct*, i32)* @__pci_mmap_make_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_mmap_make_offset(%struct.pci_dev* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @__pci_mmap_make_offset_bus(%struct.pci_dev* %14, %struct.vm_area_struct* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %126

31:                                               ; preds = %22
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = shl i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %115, %31
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %118

48:                                               ; preds = %44
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load %struct.resource*, %struct.resource** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %51, i64 %53
  store %struct.resource* %54, %struct.resource** %12, align 8
  %55 = load %struct.resource*, %struct.resource** %12, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %115

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @pci_mmap_mem, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %115

69:                                               ; preds = %64
  br label %94

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @pci_mmap_io, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.resource*, %struct.resource** %12, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IORESOURCE_IO, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %74, %70
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @pci_mmap_mem, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.resource*, %struct.resource** %12, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85, %74
  br label %115

93:                                               ; preds = %85, %81
  br label %94

94:                                               ; preds = %93, %69
  %95 = load %struct.resource*, %struct.resource** %12, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = add i64 %97, %98
  %100 = load i64, i64* @PAGE_MASK, align 8
  %101 = and i64 %99, %100
  store i64 %101, i64* %13, align 8
  %102 = load %struct.resource*, %struct.resource** %12, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ule i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %94
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %108, %109
  %111 = load i64, i64* %13, align 8
  %112 = icmp ule i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %118

114:                                              ; preds = %107, %94
  br label %115

115:                                              ; preds = %114, %92, %68, %59
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %44

118:                                              ; preds = %113, %44
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %122, %29, %20
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @__pci_mmap_make_offset_bus(%struct.pci_dev*, %struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
