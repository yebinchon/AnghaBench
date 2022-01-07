; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_fixup.c_pci_fixup_video.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_fixup.c_pci_fixup_video.c"
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
  %7 = call i64 (...) @is_uv_system()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %95

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  %13 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  store %struct.pci_bus* %13, %struct.pci_bus** %4, align 8
  br label %14

14:                                               ; preds = %37, %10
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = icmp ne %struct.pci_bus* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %3, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i64 @pci_is_bridge(%struct.pci_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCI_BRIDGE_CTL_VGA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %95

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %23, %17
  %38 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %39 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %38, i32 0, i32 0
  %40 = load %struct.pci_bus*, %struct.pci_bus** %39, align 8
  store %struct.pci_bus* %40, %struct.pci_bus** %4, align 8
  br label %14

41:                                               ; preds = %14
  %42 = call %struct.pci_dev* (...) @vga_default_device()
  %43 = icmp ne %struct.pci_dev* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call %struct.pci_dev* (...) @vga_default_device()
  %47 = icmp eq %struct.pci_dev* %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %44, %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @PCI_COMMAND, align 4
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %49, i32 %50, i32* %5)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PCI_COMMAND_IO, align 4
  %54 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %48
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %61, i64 %62
  store %struct.resource* %63, %struct.resource** %6, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = call i32 @pci_disable_rom(%struct.pci_dev* %64)
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.resource*, %struct.resource** %6, align 8
  %72 = call i32 @release_resource(%struct.resource* %71)
  br label %73

73:                                               ; preds = %70, %58
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  store i32 786432, i32* %75, align 8
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 131072
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.resource*, %struct.resource** %6, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @IORESOURCE_MEM, align 4
  %84 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.resource*, %struct.resource** %6, align 8
  %93 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.resource* %92)
  br label %94

94:                                               ; preds = %73, %48
  br label %95

95:                                               ; preds = %9, %35, %94, %44
  ret void
}

declare dso_local i64 @is_uv_system(...) #1

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
