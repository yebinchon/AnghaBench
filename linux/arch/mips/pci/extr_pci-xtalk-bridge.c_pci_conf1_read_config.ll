; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf1_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf1_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.bridge_regs* }
%struct.bridge_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@b_pci_cfg = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_conf1_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bridge_controller*, align 8
  %13 = alloca %struct.bridge_regs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %21 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %20)
  store %struct.bridge_controller* %21, %struct.bridge_controller** %12, align 8
  %22 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %23 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %22, i32 0, i32 0
  %24 = load %struct.bridge_regs*, %struct.bridge_regs** %23, align 8
  store %struct.bridge_regs* %24, %struct.bridge_regs** %13, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PCI_SLOT(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PCI_FUNC(i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %33 = load i32, i32* @b_pci_cfg, align 4
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %15, align 4
  %37 = shl i32 %36, 11
  %38 = or i32 %35, %37
  %39 = call i32 @bridge_write(%struct.bridge_controller* %32, i32 %33, i32 %38)
  %40 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %41 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = shl i32 %44, 8
  %46 = load i32, i32* @PCI_VENDOR_ID, align 4
  %47 = or i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = call i32 @get_dbe(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %57, i32* %6, align 4
  br label %131

58:                                               ; preds = %5
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %61 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %67 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = shl i32 %70, 8
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, -4
  %74 = or i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = bitcast i32* %76 to i8*
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @ioc3_cfg_rd(i8* %78, i32 %79, i32 %80, i32* %81)
  store i32 %82, i32* %6, align 4
  br label %131

83:                                               ; preds = %58
  %84 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %85 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 4, %91
  %93 = xor i32 %90, %92
  %94 = or i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %87, i64 %95
  %97 = bitcast i32* %96 to i8*
  store i8* %97, i8** %17, align 8
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %17, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = call i32 @get_dbe(i32 %102, i32* %104)
  store i32 %105, i32* %19, align 4
  br label %122

106:                                              ; preds = %83
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %17, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = call i32 @get_dbe(i32 %111, i32* %113)
  store i32 %114, i32* %19, align 4
  br label %121

115:                                              ; preds = %106
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = call i32 @get_dbe(i32 %117, i32* %119)
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %65, %56
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @bridge_write(%struct.bridge_controller*, i32, i32) #1

declare dso_local i32 @get_dbe(i32, i32*) #1

declare dso_local i32 @ioc3_cfg_rd(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
