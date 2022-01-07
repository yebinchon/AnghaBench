; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-loongson3.c_pci_fixup_radeon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-loongson3.c_pci_fixup_radeon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32, i64, i64, i64 }

@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@loongson_sysconf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BAR %d: assigned %pR for Radeon ROM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_radeon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_radeon(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1
  %6 = load %struct.resource*, %struct.resource** %5, align 8
  %7 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %6, i64 %7
  store %struct.resource* %8, %struct.resource** %3, align 8
  %9 = load %struct.resource*, %struct.resource** %3, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loongson_sysconf, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %53

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_disable_rom(%struct.pci_dev* %19)
  %21 = load %struct.resource*, %struct.resource** %3, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.resource*, %struct.resource** %3, align 8
  %27 = call i32 @release_resource(%struct.resource* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loongson_sysconf, i32 0, i32 0), align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i64 @virt_to_phys(i8* %30)
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.resource*, %struct.resource** %3, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 262144
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.resource*, %struct.resource** %3, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.resource*, %struct.resource** %3, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %51 = load %struct.resource*, %struct.resource** %3, align 8
  %52 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %50, %struct.resource* %51)
  br label %53

53:                                               ; preds = %28, %17, %13
  ret void
}

declare dso_local i32 @pci_disable_rom(%struct.pci_dev*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
