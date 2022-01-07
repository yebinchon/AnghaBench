; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson3.c_loongson3_pci_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson3.c_loongson3_pci_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }
%struct.pci_dev = type { i32 }

@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@HT1LO_PCICFG_BASE = common dso_local global i8 0, align 1
@HT1LO_PCICFG_BASE_TP1 = common dso_local global i8 0, align 1
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @loongson3_pci_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson3_pci_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca %struct.pci_dev*, align 8
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @PCI_FUNC(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, -4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %5
  %32 = load i8, i8* %12, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %14, align 4
  %36 = shl i32 %35, 11
  %37 = or i32 %34, %36
  %38 = load i32, i32* %13, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %40, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %17, align 1
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 31
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %51, i32* %6, align 4
  br label %134

52:                                               ; preds = %47
  %53 = load i8, i8* @HT1LO_PCICFG_BASE, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %17, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i8
  %59 = call i64 @TO_UNCAC(i8 zeroext %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %16, align 8
  br label %70

61:                                               ; preds = %31
  %62 = load i8, i8* @HT1LO_PCICFG_BASE_TP1, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %17, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %63, %65
  %67 = trunc i32 %66 to i8
  %68 = call i64 @TO_UNCAC(i8 zeroext %67)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %16, align 8
  br label %70

70:                                               ; preds = %61, %52
  br label %110

71:                                               ; preds = %5
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 0)
  store %struct.pci_dev* %76, %struct.pci_dev** %18, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %78 = icmp ne %struct.pci_dev* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %80, i32* %6, align 4
  br label %134

81:                                               ; preds = %75
  %82 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %83 = call zeroext i8 @pci_resource_start(%struct.pci_dev* %82, i32 3)
  store i8 %83, i8* %17, align 1
  %84 = load i8, i8* %17, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %87, i32* %6, align 4
  br label %134

88:                                               ; preds = %81
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 20
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 %92, 15
  %94 = or i32 %91, %93
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 %95, 12
  %97 = or i32 %94, %96
  %98 = load i32, i32* %15, align 4
  %99 = or i32 %97, %98
  %100 = load i8, i8* %17, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %17, align 1
  %104 = load i8, i8* %17, align 1
  %105 = call i64 @TO_UNCAC(i8 zeroext %104)
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %16, align 8
  br label %109

107:                                              ; preds = %71
  %108 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %108, i32* %6, align 4
  br label %134

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %70
  %111 = load i8, i8* %7, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %16, align 8
  %120 = call i32 @writel(i32 %118, i8* %119)
  br label %132

121:                                              ; preds = %110
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @readl(i8* %122)
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32*, i32** %11, align 8
  store i32 -1, i32* %129, align 4
  %130 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %128, %107, %86, %79, %50
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i64 @TO_UNCAC(i8 zeroext) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local zeroext i8 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @readl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
