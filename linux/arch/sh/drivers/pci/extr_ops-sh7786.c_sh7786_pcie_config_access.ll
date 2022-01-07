; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, %struct.pci_channel* }
%struct.pci_channel = type { i32 }

@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i8 0, align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@SH4A_PCIEERRFR = common dso_local global i32 0, align 4
@SH4A_PCIEPAR = common dso_local global i32 0, align 4
@SH4A_PCIEPCTLR = common dso_local global i32 0, align 4
@SH4A_PCIEPCICONF1 = common dso_local global i32 0, align 4
@SH4A_PCIEPDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @sh7786_pcie_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7786_pcie_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 2
  %19 = load %struct.pci_channel*, %struct.pci_channel** %18, align 8
  store %struct.pci_channel* %19, %struct.pci_channel** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @PCI_SLOT(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @PCI_FUNC(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, -4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %34 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %43, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  %39 = icmp sgt i32 %38, 31
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = icmp sgt i32 %41, 7
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37, %5
  %44 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %44, i32* %6, align 4
  br label %145

45:                                               ; preds = %40
  %46 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %47 = call i64 @pci_is_root_bus(%struct.pci_bus* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @PCI_ACCESS_READ, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @PCI_REG(i32 %60)
  %62 = call i32 @pci_read_reg(%struct.pci_channel* %59, i32 %61)
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %71

64:                                               ; preds = %52
  %65 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @PCI_REG(i32 %68)
  %70 = call i32 @pci_write_reg(%struct.pci_channel* %65, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %72, i32* %6, align 4
  br label %145

73:                                               ; preds = %49
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %77, i32* %6, align 4
  br label %145

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %82 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %83 = load i32, i32* @SH4A_PCIEERRFR, align 4
  %84 = call i32 @pci_read_reg(%struct.pci_channel* %82, i32 %83)
  %85 = load i32, i32* @SH4A_PCIEERRFR, align 4
  %86 = call i32 @pci_write_reg(%struct.pci_channel* %81, i32 %84, i32 %85)
  %87 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %88 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %89 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 24
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %92, 19
  %94 = or i32 %91, %93
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 16
  %97 = or i32 %94, %96
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SH4A_PCIEPAR, align 4
  %101 = call i32 @pci_write_reg(%struct.pci_channel* %87, i32 %99, i32 %100)
  %102 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %103 = load i32, i32* %15, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 -2147483648, %104
  %106 = load i32, i32* @SH4A_PCIEPCTLR, align 4
  %107 = call i32 @pci_write_reg(%struct.pci_channel* %102, i32 %105, i32 %106)
  %108 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %109 = load i32, i32* @SH4A_PCIEERRFR, align 4
  %110 = call i32 @pci_read_reg(%struct.pci_channel* %108, i32 %109)
  %111 = and i32 %110, 16
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %80
  %114 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %114, i32* %6, align 4
  br label %145

115:                                              ; preds = %80
  %116 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %117 = load i32, i32* @SH4A_PCIEPCICONF1, align 4
  %118 = call i32 @pci_read_reg(%struct.pci_channel* %116, i32 %117)
  %119 = and i32 %118, 805306368
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %122, i32* %6, align 4
  br label %145

123:                                              ; preds = %115
  %124 = load i8, i8* %7, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @PCI_ACCESS_READ, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %131 = load i32, i32* @SH4A_PCIEPDR, align 4
  %132 = call i32 @pci_read_reg(%struct.pci_channel* %130, i32 %131)
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  br label %140

134:                                              ; preds = %123
  %135 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SH4A_PCIEPDR, align 4
  %139 = call i32 @pci_write_reg(%struct.pci_channel* %135, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %142 = load i32, i32* @SH4A_PCIEPCTLR, align 4
  %143 = call i32 @pci_write_reg(%struct.pci_channel* %141, i32 0, i32 %142)
  %144 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %140, %121, %113, %76, %71, %43
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @PCI_REG(i32) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
