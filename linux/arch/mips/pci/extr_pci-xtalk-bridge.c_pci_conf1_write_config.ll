; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf1_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf1_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.bridge_regs* }
%struct.bridge_regs = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@b_pci_cfg = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_conf1_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32 %4, i32* %11, align 4
  %20 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %21 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %20)
  store %struct.bridge_controller* %21, %struct.bridge_controller** %12, align 8
  %22 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %23 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %22, i32 0, i32 0
  %24 = load %struct.bridge_regs*, %struct.bridge_regs** %23, align 8
  store %struct.bridge_regs* %24, %struct.bridge_regs** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @PCI_SLOT(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @PCI_FUNC(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %33 = load i32, i32* @b_pci_cfg, align 4
  %34 = load i32, i32* %16, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %14, align 4
  %37 = shl i32 %36, 11
  %38 = or i32 %35, %37
  %39 = call i32 @bridge_write(%struct.bridge_controller* %32, i32 %33, i32 %38)
  %40 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %41 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %15, align 4
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
  %54 = call i64 @get_dbe(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %57, i32* %6, align 4
  br label %132

58:                                               ; preds = %5
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %61 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %67 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = bitcast i32* %82 to i8*
  store i8* %83, i8** %17, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @ioc3_cfg_wr(i8* %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %132

89:                                               ; preds = %58
  %90 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %91 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 4, %97
  %99 = xor i32 %96, %98
  %100 = or i32 %95, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %93, i64 %101
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %17, align 8
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %89
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %17, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = call i32 @put_dbe(i32 %107, i32* %109)
  store i32 %110, i32* %19, align 4
  br label %125

111:                                              ; preds = %89
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = call i32 @put_dbe(i32 %115, i32* %117)
  store i32 %118, i32* %19, align 4
  br label %124

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = load i8*, i8** %17, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = call i32 @put_dbe(i32 %120, i32* %122)
  store i32 %123, i32* %19, align 4
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %129, i32* %6, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %128, %65, %56
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @bridge_write(%struct.bridge_controller*, i32, i32) #1

declare dso_local i64 @get_dbe(i32, i32*) #1

declare dso_local i32 @ioc3_cfg_wr(i8*, i32, i32, i32) #1

declare dso_local i32 @put_dbe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
