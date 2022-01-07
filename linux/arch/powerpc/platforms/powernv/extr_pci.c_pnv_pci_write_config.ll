; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_dn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PNV_PHB_FLAG_EEH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pnv_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dn*, align 8
  %13 = alloca %struct.pnv_phb*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus* %15, i32 %16)
  store %struct.pci_dn* %17, %struct.pci_dn** %12, align 8
  %18 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %19 = icmp ne %struct.pci_dn* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %21, i32* %6, align 4
  br label %50

22:                                               ; preds = %5
  %23 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %24 = call i32 @pnv_pci_cfg_check(%struct.pci_dn* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %50

28:                                               ; preds = %22
  %29 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @pnv_pci_cfg_write(%struct.pci_dn* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %35 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.pnv_phb*, %struct.pnv_phb** %37, align 8
  store %struct.pnv_phb* %38, %struct.pnv_phb** %13, align 8
  %39 = load %struct.pnv_phb*, %struct.pnv_phb** %13, align 8
  %40 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PNV_PHB_FLAG_EEH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %47 = call i32 @pnv_pci_config_check_eeh(%struct.pci_dn* %46)
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %26, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus*, i32) #1

declare dso_local i32 @pnv_pci_cfg_check(%struct.pci_dn*) #1

declare dso_local i32 @pnv_pci_cfg_write(%struct.pci_dn*, i32, i32, i32) #1

declare dso_local i32 @pnv_pci_config_check_eeh(%struct.pci_dn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
