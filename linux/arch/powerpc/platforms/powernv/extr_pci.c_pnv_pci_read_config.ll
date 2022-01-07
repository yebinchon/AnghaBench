; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_dn = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PNV_PHB_FLAG_EEH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pnv_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_dn*, align 8
  %13 = alloca %struct.pnv_phb*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 -1, i32* %15, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus* %16, i32 %17)
  store %struct.pci_dn* %18, %struct.pci_dn** %12, align 8
  %19 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %20 = icmp ne %struct.pci_dn* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %71

23:                                               ; preds = %5
  %24 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %25 = call i32 @pnv_pci_cfg_check(%struct.pci_dn* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %28, i32* %6, align 4
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @pnv_pci_cfg_read(%struct.pci_dn* %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %36 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.pnv_phb*, %struct.pnv_phb** %38, align 8
  store %struct.pnv_phb* %39, %struct.pnv_phb** %13, align 8
  %40 = load %struct.pnv_phb*, %struct.pnv_phb** %13, align 8
  %41 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PNV_PHB_FLAG_EEH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %29
  %47 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %48 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @EEH_IO_ERROR_VALUE(i32 %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %59 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @eeh_dev_check_failure(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %64, i32* %6, align 4
  br label %71

65:                                               ; preds = %57, %51
  br label %69

66:                                               ; preds = %46, %29
  %67 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %68 = call i32 @pnv_pci_config_check_eeh(%struct.pci_dn* %67)
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %63, %27, %21
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus*, i32) #1

declare dso_local i32 @pnv_pci_cfg_check(%struct.pci_dn*) #1

declare dso_local i32 @pnv_pci_cfg_read(%struct.pci_dn*, i32, i32, i32*) #1

declare dso_local i32 @EEH_IO_ERROR_VALUE(i32) #1

declare dso_local i64 @eeh_dev_check_failure(i64) #1

declare dso_local i32 @pnv_pci_config_check_eeh(%struct.pci_dn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
