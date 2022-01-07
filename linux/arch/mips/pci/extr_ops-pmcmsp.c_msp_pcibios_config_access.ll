; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }
%struct.msp_pci_regs = type { i64, i8 }

@PCI_BASE_REG = common dso_local global i64 0, align 8
@msp_pcibios_config_access.pciirqflag = internal global i8 0, align 1
@MSP_INT_PCI = common dso_local global i32 0, align 4
@bpci_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PMC MSP PCI Host\00", align 1
@BPCI_IFSTATUS_BC0F = common dso_local global i64 0, align 8
@BPCI_IFSTATUS_BC1F = common dso_local global i64 0, align 8
@BPCI_CFGADDR_ENABLE = common dso_local global i8 0, align 1
@BPCI_CFGADDR_BUSNUM_SHF = common dso_local global i8 0, align 1
@BPCI_CFGADDR_FUNCTNUM_SHF = common dso_local global i8 0, align 1
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@PCI_CONFIG_SPACE_REG = common dso_local global i64* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@proc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i8 zeroext %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64*, align 8
  %12 = alloca %struct.msp_pci_regs*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i64* %4, i64** %11, align 8
  %18 = load i64, i64* @PCI_BASE_REG, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.msp_pci_regs*
  store %struct.msp_pci_regs* %20, %struct.msp_pci_regs** %12, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %13, align 1
  %24 = load i32, i32* %9, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %14, align 1
  %26 = load i8, i8* @msp_pcibios_config_access.pciirqflag, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %5
  %30 = load i32, i32* @MSP_INT_PCI, align 4
  %31 = load i32, i32* @bpci_interrupt, align 4
  %32 = load i32, i32* @IRQF_SHARED, align 4
  %33 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %34 = call i32 @request_irq(i32 %30, i32 %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.msp_pci_regs* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  br label %107

39:                                               ; preds = %29
  store i8 -1, i8* @msp_pcibios_config_access.pciirqflag, align 1
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %42 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %43 = or i64 %41, %42
  %44 = xor i64 %43, -1
  %45 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %46 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i8, i8* @BPCI_CFGADDR_ENABLE, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %13, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @BPCI_CFGADDR_BUSNUM_SHF, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %50, %52
  %54 = or i32 %48, %53
  %55 = load i8, i8* %14, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @BPCI_CFGADDR_FUNCTNUM_SHF, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %56, %58
  %60 = or i32 %54, %59
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 252
  %64 = or i32 %60, %63
  %65 = trunc i32 %64 to i8
  %66 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %67 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %66, i32 0, i32 1
  store i8 %65, i8* %67, align 8
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %40
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @cpu_to_le32(i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64*, i64** @PCI_CONFIG_SPACE_REG, align 8
  store i64 %77, i64* %78, align 8
  br label %85

79:                                               ; preds = %40
  %80 = load i64*, i64** @PCI_CONFIG_SPACE_REG, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @le32_to_cpu(i64 %81)
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64*, i64** %11, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %87 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %15, align 8
  %89 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %90 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %89, i32 0, i32 1
  store i8 0, i8* %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %93 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %94 = or i64 %92, %93
  %95 = xor i64 %94, -1
  %96 = and i64 %91, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %85
  %99 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %100 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %101 = or i64 %99, %100
  %102 = xor i64 %101, -1
  %103 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %104 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  store i32 -1, i32* %6, align 4
  br label %107

105:                                              ; preds = %85
  %106 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %98, %37
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.msp_pci_regs*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
