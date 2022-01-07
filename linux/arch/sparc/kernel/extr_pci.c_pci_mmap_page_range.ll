; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_mmap_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_mmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_page_range(%struct.pci_dev* %0, i32 %1, %struct.vm_area_struct* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @__pci_mmap_make_offset(%struct.pci_dev* %13, %struct.vm_area_struct* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %55

21:                                               ; preds = %5
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @__pci_mmap_set_pgprot(%struct.pci_dev* %22, %struct.vm_area_struct* %23, i32 %24)
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pgprot_noncached(i32 %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %32, i64 %35, i32 %38, i64 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %21
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %52, %19
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @__pci_mmap_make_offset(%struct.pci_dev*, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @__pci_mmap_set_pgprot(%struct.pci_dev*, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
