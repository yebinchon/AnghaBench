; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_pci.c_rtas_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_pci.c_rtas_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_dn = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @rtas_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_dn*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  store i32 -1, i32* %14, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus* %15, i32 %16)
  store %struct.pci_dn* %17, %struct.pci_dn** %12, align 8
  %18 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @rtas_read_config(%struct.pci_dn* %18, i32 %19, i32 %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @EEH_IO_ERROR_VALUE(i32 %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %30 = call i32 @pdn_to_eeh_dev(%struct.pci_dn* %29)
  %31 = call i64 @eeh_dev_check_failure(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %28, %5
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.pci_dn* @pci_get_pdn_by_devfn(%struct.pci_bus*, i32) #1

declare dso_local i32 @rtas_read_config(%struct.pci_dn*, i32, i32, i32*) #1

declare dso_local i32 @EEH_IO_ERROR_VALUE(i32) #1

declare dso_local i64 @eeh_dev_check_failure(i32) #1

declare dso_local i32 @pdn_to_eeh_dev(%struct.pci_dn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
