; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson2.c_loongson_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson2.c_loongson_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@MAX_DEV_NUM = common dso_local global i32 0, align 4
@ID_SEL_BEGIN = common dso_local global i32 0, align 4
@LOONGSON_PCICMD_MABORT_CLR = common dso_local global i32 0, align 4
@LOONGSON_PCICMD_MTABORT_CLR = common dso_local global i32 0, align 4
@LOONGSON_PCICMD = common dso_local global i32 0, align 4
@LOONGSON_PCIMAP_CFG = common dso_local global i32 0, align 4
@PCI_IDSEL_CS5536 = common dso_local global i32 0, align 4
@PCI_MSR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @loongson_pcibios_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @PCI_FUNC(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, -4
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %5
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @MAX_DEV_NUM, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %100

36:                                               ; preds = %31
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @ID_SEL_BEGIN, align 4
  %39 = add nsw i32 %37, %38
  %40 = shl i32 1, %39
  %41 = load i32, i32* %18, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %40, %42
  %44 = load i32, i32* %19, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %57

46:                                               ; preds = %5
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %17, align 4
  %50 = shl i32 %49, 11
  %51 = or i32 %48, %50
  %52 = load i32, i32* %18, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = load i32, i32* %19, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %13, align 4
  store i32 65536, i32* %14, align 4
  br label %57

57:                                               ; preds = %46, %36
  %58 = load i32, i32* @LOONGSON_PCICMD_MABORT_CLR, align 4
  %59 = load i32, i32* @LOONGSON_PCICMD_MTABORT_CLR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @LOONGSON_PCICMD, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @LOONGSON_PCICMD, align 4
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 16
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* @LOONGSON_PCIMAP_CFG, align 4
  %67 = load i32, i32* @LOONGSON_PCIMAP_CFG, align 4
  store i32 %67, i32* %15, align 4
  %68 = call i32 (...) @mmiowb()
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 65535
  %71 = call i8* @CFG_SPACE_REG(i32 %70)
  store i8* %71, i8** %16, align 8
  %72 = load i8, i8* %7, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %81

75:                                               ; preds = %57
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @writel(i32 %78, i8* %79)
  br label %86

81:                                               ; preds = %57
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @readl(i8* %82)
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32, i32* @LOONGSON_PCICMD, align 4
  %88 = load i32, i32* @LOONGSON_PCICMD_MABORT_CLR, align 4
  %89 = load i32, i32* @LOONGSON_PCICMD_MTABORT_CLR, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @LOONGSON_PCICMD_MABORT_CLR, align 4
  %95 = load i32, i32* @LOONGSON_PCICMD_MTABORT_CLR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @LOONGSON_PCICMD, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* @LOONGSON_PCICMD, align 4
  store i32 -1, i32* %6, align 4
  br label %100

99:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %93, %35
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i8* @CFG_SPACE_REG(i32) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
