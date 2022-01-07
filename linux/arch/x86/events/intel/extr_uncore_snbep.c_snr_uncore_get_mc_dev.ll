; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_get_mc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_get_mc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32)* @snr_uncore_get_mc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @snr_uncore_get_mc_dev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %6

6:                                                ; preds = %1, %20, %26, %33
  %7 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 13393, %struct.pci_dev* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %34

13:                                               ; preds = %6
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @uncore_pcibus_to_physid(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %6

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @topology_phys_to_logical_pkg(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %6

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %34

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  br label %6

34:                                               ; preds = %31, %12
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %35
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @uncore_pcibus_to_physid(i32) #1

declare dso_local i32 @topology_phys_to_logical_pkg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
