; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_bus_self.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_bus_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pci_bus*)* }
%struct.pci_bus = type { i32* }
%struct.pci_controller = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.pci_bus.0*)* }
%struct.pci_bus.0 = type opaque

@ppc_md = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_setup_bus_self(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %10 = call i32 @pcibios_fixup_bridge(%struct.pci_bus* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32 (%struct.pci_bus*)*, i32 (%struct.pci_bus*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %13 = icmp ne i32 (%struct.pci_bus*)* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32 (%struct.pci_bus*)*, i32 (%struct.pci_bus*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %17 = call i32 %15(%struct.pci_bus* %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %20 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %19)
  store %struct.pci_controller* %20, %struct.pci_controller** %3, align 8
  %21 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %22 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.pci_bus.0*)*, i32 (%struct.pci_bus.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.pci_bus.0*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %28 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.pci_bus.0*)*, i32 (%struct.pci_bus.0*)** %29, align 8
  %31 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %32 = bitcast %struct.pci_bus* %31 to %struct.pci_bus.0*
  %33 = call i32 %30(%struct.pci_bus.0* %32)
  br label %34

34:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @pcibios_fixup_bridge(%struct.pci_bus*) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
