; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c___pci_mmap_make_offset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c___pci_mmap_make_offset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64 }

@pci_mmap_io = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.vm_area_struct*, i32)* @__pci_mmap_make_offset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_mmap_make_offset_bus(%struct.pci_dev* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_pbm_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %15, align 8
  store %struct.pci_pbm_info* %16, %struct.pci_pbm_info** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @pci_mmap_io, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %22 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %21, i32 0, i32 1
  %23 = call i64 @resource_size(%struct.TYPE_6__* %22)
  store i64 %23, i64* %9, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %26 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %25, i32 0, i32 0
  %27 = call i64 @resource_size(%struct.TYPE_6__* %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = shl i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %28
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %28
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @pci_mmap_io, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %59 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %79

68:                                               ; preds = %53
  %69 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %70 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* @PAGE_SHIFT, align 8
  %76 = lshr i64 %74, %75
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %68, %57
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @resource_size(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
