; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ip27.c___phys_to_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ip27.c___phys_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.bridge_controller = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__phys_to_dma(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.bridge_controller*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pci_dev* @to_pci_dev(%struct.device* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(i32 %11)
  store %struct.bridge_controller* %12, %struct.bridge_controller** %6, align 8
  %13 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %14 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  ret i64 %17
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
