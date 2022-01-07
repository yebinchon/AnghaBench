; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_ide_bases.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_ide_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32, i32 }

@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_ide_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_ide_bases(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = ashr i32 %7, 8
  %9 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %40, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %20, i64 %22
  store %struct.resource* %23, %struct.resource** %3, align 8
  %24 = load %struct.resource*, %struct.resource** %3, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -129
  %28 = icmp eq i32 %27, 884
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.resource*, %struct.resource** %3, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %31, align 4
  %34 = load %struct.resource*, %struct.resource** %3, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource*, %struct.resource** %3, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %13

43:                                               ; preds = %11, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
