; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_retrieve_fw_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_retrieve_fw_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcibios_fwaddrmap = type { i32* }

@pcibios_fw_addr_done = common dso_local global i64 0, align 8
@pcibios_fwaddrmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_retrieve_fw_addr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcibios_fwaddrmap*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @pcibios_fw_addr_done, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @pcibios_fwaddrmap_lock, i64 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call %struct.pcibios_fwaddrmap* @pcibios_fwaddrmap_lookup(%struct.pci_dev* %15)
  store %struct.pcibios_fwaddrmap* %16, %struct.pcibios_fwaddrmap** %7, align 8
  %17 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %7, align 8
  %18 = icmp ne %struct.pcibios_fwaddrmap* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %7, align 8
  %21 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %19, %12
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @pcibios_fwaddrmap_lock, i64 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pcibios_fwaddrmap* @pcibios_fwaddrmap_lookup(%struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
