; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_pci_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_pci_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@EMMA2RH_PCI_CONFIG_BASE = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i64 0, align 8
@EMMA2RH_PCI_IWIN0_CTR = common dso_local global i32 0, align 4
@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EMMA2RH_PCI_INT = common dso_local global i32 0, align 4
@RMABORT = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_config_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @EMMA2RH_PCI_CONFIG_BASE, align 4
  %18 = call i32 @KSEG1ADDR(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @check_args(%struct.pci_bus* %19, i32 %20, i32* %12)
  %22 = load i64, i64* @PCIBIOS_DEVICE_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* @PCIBIOS_DEVICE_NOT_FOUND, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %113

27:                                               ; preds = %5
  %28 = load i32, i32* @EMMA2RH_PCI_IWIN0_CTR, align 4
  %29 = call i32 @emma2rh_in32(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @set_pci_configuration_address(i32 %30, i32 %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* @PCIBIOS_DEVICE_NOT_FOUND, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %113

38:                                               ; preds = %27
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @PCI_FUNC(i32 %40)
  %42 = shl i32 %41, 8
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -4
  %46 = add i32 %43, %45
  %47 = zext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = load volatile i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %83 [
    i32 1, label %51
    i32 2, label %66
    i32 4, label %81
  ]

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 3
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = shl i32 255, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 255
  %62 = load i32, i32* %16, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  br label %88

66:                                               ; preds = %38
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 2
  %69 = shl i32 %68, 3
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = shl i32 65535, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 65535
  %77 = load i32, i32* %16, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %88

81:                                               ; preds = %38
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %15, align 4
  br label %88

83:                                               ; preds = %38
  %84 = load i32, i32* @EMMA2RH_PCI_IWIN0_CTR, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @emma2rh_out32(i32 %84, i32 %85)
  %87 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %87, i32* %6, align 4
  br label %113

88:                                               ; preds = %81, %66, %51
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @PCI_FUNC(i32 %91)
  %93 = shl i32 %92, 8
  %94 = add nsw i32 %90, %93
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, -4
  %97 = add i32 %94, %96
  %98 = zext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  store volatile i32 %89, i32* %99, align 4
  %100 = load i32, i32* @EMMA2RH_PCI_IWIN0_CTR, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @emma2rh_out32(i32 %100, i32 %101)
  %103 = load i32, i32* @EMMA2RH_PCI_INT, align 4
  %104 = call i32 @emma2rh_in32(i32 %103)
  %105 = load i32, i32* @RMABORT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %88
  %109 = load i64, i64* @PCIBIOS_DEVICE_NOT_FOUND, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %113

111:                                              ; preds = %88
  %112 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %108, %83, %35, %24
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @KSEG1ADDR(i32) #1

declare dso_local i64 @check_args(%struct.pci_bus*, i32, i32*) #1

declare dso_local i32 @emma2rh_in32(i32) #1

declare dso_local i64 @set_pci_configuration_address(i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @emma2rh_out32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
