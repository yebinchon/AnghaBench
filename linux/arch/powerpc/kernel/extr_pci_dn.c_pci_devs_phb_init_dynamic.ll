; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_devs_phb_init_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_devs_phb_init_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { %struct.pci_dn*, %struct.device_node* }
%struct.pci_dn = type { i32, i32, %struct.pci_controller*, i64, i64, i64 }
%struct.device_node = type { i32 }

@add_pdn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_devs_phb_init_dynamic(%struct.pci_controller* %0) #0 {
  %2 = alloca %struct.pci_controller*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_dn*, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %2, align 8
  %5 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %6 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %5, i32 0, i32 1
  %7 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  %8 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call %struct.pci_dn* @pci_add_device_node_info(%struct.pci_controller* %8, %struct.device_node* %9)
  store %struct.pci_dn* %10, %struct.pci_dn** %4, align 8
  %11 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %12 = icmp ne %struct.pci_dn* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %25 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 2
  store %struct.pci_controller* %24, %struct.pci_controller** %26, align 8
  %27 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %28 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 0
  store %struct.pci_dn* %27, %struct.pci_dn** %29, align 8
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = load i32, i32* @add_pdn, align 4
  %33 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %34 = call i32 @pci_traverse_device_nodes(%struct.device_node* %31, i32 %32, %struct.pci_controller* %33)
  ret void
}

declare dso_local %struct.pci_dn* @pci_add_device_node_info(%struct.pci_controller*, %struct.device_node*) #1

declare dso_local i32 @pci_traverse_device_nodes(%struct.device_node*, i32, %struct.pci_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
