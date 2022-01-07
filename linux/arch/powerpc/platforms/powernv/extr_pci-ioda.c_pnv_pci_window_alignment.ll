; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_window_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_window_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PCI_EXP_TYPE_PCI_BRIDGE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i64)* @pnv_pci_window_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_pci_window_alignment(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_controller*, align 8
  %8 = alloca %struct.pnv_phb*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %10)
  store %struct.pci_controller* %11, %struct.pci_controller** %7, align 8
  %12 = load %struct.pci_controller*, %struct.pci_controller** %7, align 8
  %13 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %12, i32 0, i32 0
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %13, align 8
  store %struct.pnv_phb* %14, %struct.pnv_phb** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  br label %18

18:                                               ; preds = %33, %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = icmp ne %struct.pci_dev* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = call i64 @pci_pcie_type(%struct.pci_dev* %22)
  %24 = load i64, i64* @PCI_EXP_TYPE_PCI_BRIDGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %69

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  store %struct.pci_dev* %38, %struct.pci_dev** %6, align 8
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %41 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @pnv_pci_is_m64_flags(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %51 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %45, %39
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IORESOURCE_MEM, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %61 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %66 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %59, %49, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i64 @pnv_pci_is_m64_flags(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
