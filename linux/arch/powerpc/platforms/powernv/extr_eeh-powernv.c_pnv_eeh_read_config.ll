; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32, i32, i32*)* @pnv_eeh_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_read_config(%struct.pci_dn* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.pci_dn* %0, %struct.pci_dn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %11 = icmp ne %struct.pci_dn* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %13, i32* %5, align 4
  br label %27

14:                                               ; preds = %4
  %15 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %16 = call i64 @pnv_eeh_cfg_blocked(%struct.pci_dn* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %9, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @pnv_pci_cfg_read(%struct.pci_dn* %22, i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %18, %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @pnv_eeh_cfg_blocked(%struct.pci_dn*) #1

declare dso_local i32 @pnv_pci_cfg_read(%struct.pci_dn*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
