; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf0_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_pci_conf0_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.bridge_regs* }
%struct.bridge_regs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32* }

@PCI_VENDOR_ID = common dso_local global i64 0, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_conf0_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf0_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %19)
  store %struct.bridge_controller* %20, %struct.bridge_controller** %12, align 8
  %21 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %22 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %21, i32 0, i32 0
  %23 = load %struct.bridge_regs*, %struct.bridge_regs** %22, align 8
  store %struct.bridge_regs* %23, %struct.bridge_regs** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PCI_FUNC(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %29 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @PCI_VENDOR_ID, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = call i64 @get_dbe(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %50, i32* %6, align 4
  br label %131

51:                                               ; preds = %5
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %54 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %53, %55
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %60 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = bitcast i32* %75 to i8*
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ioc3_cfg_wr(i8* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  br label %131

82:                                               ; preds = %51
  %83 = load %struct.bridge_regs*, %struct.bridge_regs** %13, align 8
  %84 = getelementptr inbounds %struct.bridge_regs, %struct.bridge_regs* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 4, %97
  %99 = xor i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %16, align 8
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %82
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %16, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = call i32 @put_dbe(i32 %106, i32* %108)
  store i32 %109, i32* %18, align 4
  br label %124

110:                                              ; preds = %82
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = call i32 @put_dbe(i32 %114, i32* %116)
  store i32 %117, i32* %18, align 4
  br label %123

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = call i32 @put_dbe(i32 %119, i32* %121)
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %128, i32* %6, align 4
  br label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %127, %58, %49
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @get_dbe(i32, i32*) #1

declare dso_local i32 @ioc3_cfg_wr(i8*, i32, i32, i32) #1

declare dso_local i32 @put_dbe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
