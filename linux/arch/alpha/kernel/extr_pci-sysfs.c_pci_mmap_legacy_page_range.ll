; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_mmap_legacy_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_mmap_legacy_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pci_controller* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_controller = type { i32 }
%struct.vm_area_struct = type { i32 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_legacy_page_range(%struct.pci_bus* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 2
  %13 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  store %struct.pci_controller* %13, %struct.pci_controller** %8, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @has_sparse(%struct.pci_controller* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @pci_mmap_mem, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %28 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i64 [ %25, %20 ], [ %31, %26 ]
  store i64 %33, i64* %10, align 8
  %34 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @__legacy_mmap_fits(%struct.pci_controller* %34, %struct.vm_area_struct* %35, i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hose_mmap_page_range(%struct.pci_controller* %44, %struct.vm_area_struct* %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @has_sparse(%struct.pci_controller*, i32) #1

declare dso_local i32 @__legacy_mmap_fits(%struct.pci_controller*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @hose_mmap_page_range(%struct.pci_controller*, %struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
