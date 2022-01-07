; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_reserve_dev_m64_pe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_reserve_dev_m64_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource*, i32 }
%struct.resource = type { i32, i32, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i64*)* @pnv_ioda_reserve_dev_m64_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_ioda_reserve_dev_m64_pe(%struct.pci_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca %struct.pnv_phb*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_controller* @pci_bus_to_host(i32 %16)
  store %struct.pci_controller* %17, %struct.pci_controller** %5, align 8
  %18 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %19 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %18, i32 0, i32 0
  %20 = load %struct.pnv_phb*, %struct.pnv_phb** %19, align 8
  store %struct.pnv_phb* %20, %struct.pnv_phb** %6, align 8
  %21 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %22 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %26 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %90, %2
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %36, i64 %38
  store %struct.resource* %39, %struct.resource** %7, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = call i32 @pnv_pci_is_m64(%struct.pnv_phb* %45, %struct.resource* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %33
  br label %90

50:                                               ; preds = %44
  %51 = load %struct.resource*, %struct.resource** %7, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_ALIGN_DOWN(i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @_ALIGN_UP(i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %86, %50
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i64*, i64** %4, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i64*, i64** %4, align 8
  %80 = call i32 @set_bit(i32 %78, i64* %79)
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @pnv_ioda_reserve_pe(%struct.pnv_phb* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %68

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %29

93:                                               ; preds = %29
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pnv_pci_is_m64(%struct.pnv_phb*, %struct.resource*) #1

declare dso_local i32 @_ALIGN_DOWN(i32, i32) #1

declare dso_local i32 @_ALIGN_UP(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @pnv_ioda_reserve_pe(%struct.pnv_phb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
