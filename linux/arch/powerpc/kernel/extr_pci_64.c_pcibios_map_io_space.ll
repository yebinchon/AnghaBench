; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_64.c_pcibios_map_io_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_64.c_pcibios_map_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"IO mapping for PCI-PCI bridge %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  virt=0x%016llx...0x%016llx\0A\00", align 1
@_IO_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_io_space(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %5 = icmp eq %struct.pci_bus* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pci_name(i64 %15)
  %17 = sext i32 %16 to i64
  %18 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @_IO_BASE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_IO_BASE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %36)
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %40 = call i32 @pci_bus_to_host(%struct.pci_bus* %39)
  %41 = call i32 @pcibios_map_phb_io_space(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @pci_name(i64) #1

declare dso_local i32 @pcibios_map_phb_io_space(i32) #1

declare dso_local i32 @pci_bus_to_host(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
