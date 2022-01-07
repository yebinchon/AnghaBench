; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_it8152.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_it8152.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_it8152 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_it8152(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = ashr i32 %6, 8
  %8 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 425984
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 524547
  br i1 %19, label %20, label %51

20:                                               ; preds = %15, %10, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %21

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
