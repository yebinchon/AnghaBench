; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_claim_legacy_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_claim_legacy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.resource = type { i8*, i32 }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Video RAM area\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"can't claim VGA legacy %pR: no compatible bridge window\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"can't claim VGA legacy %pR: address conflict with %s %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"VGA legacy framebuffer %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_claim_legacy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_claim_legacy_resources(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_bus_region, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 8
  %11 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.resource* @kzalloc(i32 16, i32 %15)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %70

20:                                               ; preds = %14
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = load i32, i32* @IORESOURCE_BUSY, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %3, i32 0, i32 0
  store i32 655360, i32* %28, align 4
  %29 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 131071
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = call i32 @pcibios_bus_to_resource(i32 %37, %struct.resource* %38, %struct.pci_bus_region* %3)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = call %struct.resource* @pci_find_parent_resource(%struct.pci_dev* %40, %struct.resource* %41)
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %20
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = call i32 (%struct.pci_dev*, i8*, %struct.resource*, ...) @pci_info(%struct.pci_dev* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %47)
  br label %67

49:                                               ; preds = %20
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = load %struct.resource*, %struct.resource** %4, align 8
  %52 = call %struct.resource* @request_resource_conflict(%struct.resource* %50, %struct.resource* %51)
  store %struct.resource* %52, %struct.resource** %6, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = icmp ne %struct.resource* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = load %struct.resource*, %struct.resource** %6, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = call i32 (%struct.pci_dev*, i8*, %struct.resource*, ...) @pci_info(%struct.pci_dev* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %57, i8* %60, %struct.resource* %61)
  br label %67

63:                                               ; preds = %49
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = load %struct.resource*, %struct.resource** %4, align 8
  %66 = call i32 (%struct.pci_dev*, i8*, %struct.resource*, ...) @pci_info(%struct.pci_dev* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.resource* %65)
  br label %70

67:                                               ; preds = %55, %45
  %68 = load %struct.resource*, %struct.resource** %4, align 8
  %69 = call i32 @kfree(%struct.resource* %68)
  br label %70

70:                                               ; preds = %67, %63, %19, %13
  ret void
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local %struct.resource* @pci_find_parent_resource(%struct.pci_dev*, %struct.resource*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*, ...) #1

declare dso_local %struct.resource* @request_resource_conflict(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
