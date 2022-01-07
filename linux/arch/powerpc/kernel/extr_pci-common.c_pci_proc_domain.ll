; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pci_proc_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pci_proc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_controller = type { i64 }

@PCI_ENABLE_PROC_DOMAINS = common dso_local global i32 0, align 4
@PCI_COMPAT_DOMAIN_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_proc_domain(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %6 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %5)
  store %struct.pci_controller* %6, %struct.pci_controller** %4, align 8
  %7 = load i32, i32* @PCI_ENABLE_PROC_DOMAINS, align 4
  %8 = call i64 @pci_has_flag(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @PCI_COMPAT_DOMAIN_0, align 4
  %13 = call i64 @pci_has_flag(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %15, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i64 @pci_has_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
