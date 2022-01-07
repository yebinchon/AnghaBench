; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_find_gmch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_find_gmch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_gmch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gmch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pci_dev* @pci_get_device(i32 %5, i32 %6, %struct.pci_dev* null)
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @PCI_FUNC(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call %struct.pci_dev* @pci_get_device(i32 %17, i32 %18, %struct.pci_dev* %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %4, align 8
  br label %21

21:                                               ; preds = %16, %10, %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %27

25:                                               ; preds = %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
