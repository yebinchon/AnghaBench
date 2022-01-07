; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_pci.c_rtas_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_pci.c_rtas_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@ibm_read_pci_config = common dso_local global i32 0, align 4
@read_pci_config = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@EEH_PE_CFG_BLOCKED = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtas_read_config(%struct.pci_dn* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %15 = icmp ne %struct.pci_dn* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %17, i32* %5, align 4
  br label %64

18:                                               ; preds = %4
  %19 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @config_access_valid(%struct.pci_dn* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %27 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %30 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @rtas_config_addr(i32 %28, i32 %31, i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %35 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %25
  %42 = load i32, i32* @ibm_read_pci_config, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @BUID_HI(i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @BUID_LO(i64 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i32, i32, i32*, i64, i32, ...) @rtas_call(i32 %42, i32 4, i32 2, i32* %10, i64 %43, i32 %45, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  br label %55

50:                                               ; preds = %25
  %51 = load i32, i32* @read_pci_config, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i32, i32, i32, i32*, i64, i32, ...) @rtas_call(i32 %51, i32 2, i32 2, i32* %10, i64 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %50, %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %60, %23, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @config_access_valid(%struct.pci_dn*, i32) #1

declare dso_local i64 @rtas_config_addr(i32, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i64, i32, ...) #1

declare dso_local i32 @BUID_HI(i64) #1

declare dso_local i32 @BUID_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
