; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pci_mmap_legacy_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pci_mmap_legacy_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_legacy_page_range(%struct.pci_bus* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @pci_mmap_mem, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %80

24:                                               ; preds = %3
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @valid_mmap_phys_addr_range(i64 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @phys_mem_access_prot(i32* null, i64 %37, i64 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %44 = call i8* @pci_get_legacy_mem(%struct.pci_bus* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %4, align 4
  br label %80

51:                                               ; preds = %34
  %52 = load i8*, i8** %10, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @remap_pfn_range(%struct.vm_area_struct* %63, i64 %66, i64 %69, i64 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %51
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %48, %31, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @valid_mmap_phys_addr_range(i64, i64) #1

declare dso_local i32 @phys_mem_access_prot(i32*, i64, i64, i32) #1

declare dso_local i8* @pci_get_legacy_mem(%struct.pci_bus*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
