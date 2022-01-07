; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_bus_to_pdn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_bus_to_pdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }
%struct.pci_bus = type { %struct.pci_bus*, i64 }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dn* (%struct.pci_bus*)* @pci_bus_to_pdn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dn* @pci_bus_to_pdn(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pci_dn*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  store %struct.pci_bus* %6, %struct.pci_bus** %3, align 8
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = icmp ne %struct.pci_bus* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %12 = call i64 @pci_is_root_bus(%struct.pci_bus* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %10
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load %struct.pci_bus*, %struct.pci_bus** %22, align 8
  store %struct.pci_bus* %23, %struct.pci_bus** %3, align 8
  br label %7

24:                                               ; preds = %19, %7
  %25 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %26 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %25)
  store %struct.device_node* %26, %struct.device_node** %4, align 8
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %30)
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi %struct.pci_dn* [ %31, %29 ], [ null, %32 ]
  store %struct.pci_dn* %34, %struct.pci_dn** %5, align 8
  %35 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  ret %struct.pci_dn* %35
}

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
