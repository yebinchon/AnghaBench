; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/pci/extr_pci-common.c_pcibios_alloc_controller.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/pci/extr_pci-common.c_pcibios_alloc_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32, %struct.device_node*, i32, i64 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hose_spinlock = common dso_local global i32 0, align 4
@global_phb_number = common dso_local global i32 0, align 4
@hose_list = common dso_local global i32 0, align 4
@mem_init_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_controller* @pcibios_alloc_controller(%struct.device_node* %0) #0 {
  %2 = alloca %struct.pci_controller*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pci_controller* @zalloc_maybe_bootmem(i32 32, i32 %5)
  store %struct.pci_controller* %6, %struct.pci_controller** %4, align 8
  %7 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %8 = icmp ne %struct.pci_controller* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pci_controller* null, %struct.pci_controller** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = call i32 @spin_lock(i32* @hose_spinlock)
  %12 = load i32, i32* @global_phb_number, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @global_phb_number, align 4
  %14 = sext i32 %12 to i64
  %15 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 2
  %19 = call i32 @list_add_tail(i32* %18, i32* @hose_list)
  %20 = call i32 @spin_unlock(i32* @hose_spinlock)
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  %22 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %23 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %22, i32 0, i32 1
  store %struct.device_node* %21, %struct.device_node** %23, align 8
  %24 = load i32, i32* @mem_init_done, align 4
  %25 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  store %struct.pci_controller* %27, %struct.pci_controller** %2, align 8
  br label %28

28:                                               ; preds = %10, %9
  %29 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  ret %struct.pci_controller* %29
}

declare dso_local %struct.pci_controller* @zalloc_maybe_bootmem(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
