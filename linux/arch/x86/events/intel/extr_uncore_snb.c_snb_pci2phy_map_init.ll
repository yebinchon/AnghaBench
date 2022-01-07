; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_pci2phy_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_pci2phy_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci2phy_map = type { i64* }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@pci2phy_map_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snb_pci2phy_map_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci2phy_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.pci_dev* @pci_get_device(i32 %8, i32 %9, %struct.pci_dev* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOTTY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @pci_domain_nr(%struct.TYPE_2__* %25)
  store i32 %26, i32* %7, align 4
  %27 = call i32 @raw_spin_lock(i32* @pci2phy_map_lock)
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.pci2phy_map* @__find_pci2phy_map(i32 %28)
  store %struct.pci2phy_map* %29, %struct.pci2phy_map** %5, align 8
  %30 = load %struct.pci2phy_map*, %struct.pci2phy_map** %5, align 8
  %31 = icmp ne %struct.pci2phy_map* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %17
  %33 = call i32 @raw_spin_unlock(i32* @pci2phy_map_lock)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_dev_put(%struct.pci_dev* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %17
  %39 = load %struct.pci2phy_map*, %struct.pci2phy_map** %5, align 8
  %40 = getelementptr inbounds %struct.pci2phy_map, %struct.pci2phy_map* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  %45 = call i32 @raw_spin_unlock(i32* @pci2phy_map_lock)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @pci_dev_put(%struct.pci_dev* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %38, %32, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local %struct.pci2phy_map* @__find_pci2phy_map(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
