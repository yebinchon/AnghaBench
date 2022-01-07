; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_allocate_dev_rom_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_allocate_dev_rom_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i64, i32, i64, i32 }

@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pcibios_allocate_dev_rom_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_allocate_dev_rom_resource(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.resource*, %struct.resource** %5, align 8
  %7 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %6, i64 %7
  store %struct.resource* %8, %struct.resource** %3, align 8
  %9 = load %struct.resource*, %struct.resource** %3, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %42

19:                                               ; preds = %13
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %28 = call i64 @pci_claim_resource(%struct.pci_dev* %26, i64 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.resource*, %struct.resource** %3, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.resource*, %struct.resource** %3, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.resource*, %struct.resource** %3, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %18, %24, %30, %25
  ret void
}

declare dso_local i64 @pci_claim_resource(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
