; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci.c_pcibios_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci.c_pcibios_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_enable_device(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @PCI_COMMAND, align 4
  %11 = call i32 @pci_read_config_word(%struct.pci_dev* %9, i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %20, i64 %22
  store %struct.resource* %23, %struct.resource** %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %53

30:                                               ; preds = %17
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IORESOURCE_IO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @PCI_COMMAND_IO, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pci_info(%struct.pci_dev* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = load i32, i32* @PCI_COMMAND, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pci_write_config_word(%struct.pci_dev* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %56
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
