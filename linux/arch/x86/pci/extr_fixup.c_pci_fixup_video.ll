; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_pci_fixup_video.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_pci_fixup_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource*, %struct.pci_bus* }
%struct.resource = type { i32, i32, i32, i64 }
%struct.pci_bus = type { %struct.pci_bus*, %struct.pci_dev* }

@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_VGA = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Video device with shadowed ROM at %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_video(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  store %struct.pci_bus* %9, %struct.pci_bus** %4, align 8
  br label %10

10:                                               ; preds = %33, %1
  %11 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %12 = icmp ne %struct.pci_bus* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i64 @pci_is_bridge(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %26 = call i32 @pci_read_config_word(%struct.pci_dev* %24, i32 %25, i32* %5)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PCI_BRIDGE_CTL_VGA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %91

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %19, %13
  %34 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 0
  %36 = load %struct.pci_bus*, %struct.pci_bus** %35, align 8
  store %struct.pci_bus* %36, %struct.pci_bus** %4, align 8
  br label %10

37:                                               ; preds = %10
  %38 = call %struct.pci_dev* (...) @vga_default_device()
  %39 = icmp ne %struct.pci_dev* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call %struct.pci_dev* (...) @vga_default_device()
  %43 = icmp eq %struct.pci_dev* %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %40, %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @PCI_COMMAND, align 4
  %47 = call i32 @pci_read_config_word(%struct.pci_dev* %45, i32 %46, i32* %5)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PCI_COMMAND_IO, align 4
  %50 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %44
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load %struct.resource*, %struct.resource** %56, align 8
  %58 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %57, i64 %58
  store %struct.resource* %59, %struct.resource** %6, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_disable_rom(%struct.pci_dev* %60)
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = call i32 @release_resource(%struct.resource* %67)
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  store i32 786432, i32* %71, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 131072
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @IORESOURCE_MEM, align 4
  %80 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.resource* %88)
  br label %90

90:                                               ; preds = %69, %44
  br label %91

91:                                               ; preds = %31, %90, %40
  ret void
}

declare dso_local i64 @pci_is_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

declare dso_local i32 @pci_disable_rom(%struct.pci_dev*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
