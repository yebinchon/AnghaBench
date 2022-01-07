; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pci.c_pseries_root_bridge_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pci.c_pseries_root_bridge_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_host_bridge = type { %struct.pci_bus* }
%struct.pci_bus = type { i8*, i8* }
%struct.device_node = type { i32 }

@pcibios_free_controller_deferred = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ibm,pcie-link-speed-stats\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"no ibm,pcie-link-speed-stats property\0A\00", align 1
@PCIE_SPEED_2_5GT = common dso_local global i8* null, align 8
@PCIE_SPEED_5_0GT = common dso_local global i8* null, align 8
@PCIE_SPEED_8_0GT = common dso_local global i8* null, align 8
@PCI_SPEED_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pseries_root_bridge_prepare(%struct.pci_host_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_host_bridge*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.pci_host_bridge* %0, %struct.pci_host_bridge** %3, align 8
  %9 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %9, i32 0, i32 0
  %11 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  store %struct.pci_bus* %11, %struct.pci_bus** %6, align 8
  %12 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %13 = load i32, i32* @pcibios_free_controller_deferred, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %15 = call i64 @pci_bus_to_host(%struct.pci_bus* %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @pci_set_host_bridge_release(%struct.pci_host_bridge* %12, i32 %13, i8* %16)
  %18 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %19 = call %struct.device_node* @pcibios_get_phb_of_node(%struct.pci_bus* %18)
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %24, %struct.device_node** %5, align 8
  br label %25

25:                                               ; preds = %36, %23
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = call i32 @of_property_read_u32_array(%struct.device_node* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %30, i32 2)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %37)
  store %struct.device_node* %38, %struct.device_node** %5, align 8
  br label %25

39:                                               ; preds = %34, %25
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32 @of_node_put(%struct.device_node* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

46:                                               ; preds = %39
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %61 [
    i32 1, label %49
    i32 2, label %53
    i32 4, label %57
  ]

49:                                               ; preds = %46
  %50 = load i8*, i8** @PCIE_SPEED_2_5GT, align 8
  %51 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %52 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %65

53:                                               ; preds = %46
  %54 = load i8*, i8** @PCIE_SPEED_5_0GT, align 8
  %55 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %56 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %65

57:                                               ; preds = %46
  %58 = load i8*, i8** @PCIE_SPEED_8_0GT, align 8
  %59 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %60 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %65

61:                                               ; preds = %46
  %62 = load i8*, i8** @PCI_SPEED_UNKNOWN, align 8
  %63 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %64 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57, %53, %49
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %80 [
    i32 1, label %68
    i32 2, label %72
    i32 4, label %76
  ]

68:                                               ; preds = %65
  %69 = load i8*, i8** @PCIE_SPEED_2_5GT, align 8
  %70 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %71 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %84

72:                                               ; preds = %65
  %73 = load i8*, i8** @PCIE_SPEED_5_0GT, align 8
  %74 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %75 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %84

76:                                               ; preds = %65
  %77 = load i8*, i8** @PCIE_SPEED_8_0GT, align 8
  %78 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %79 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %65
  %81 = load i8*, i8** @PCI_SPEED_UNKNOWN, align 8
  %82 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %83 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %76, %72, %68
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %44, %22
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pci_set_host_bridge_release(%struct.pci_host_bridge*, i32, i8*) #1

declare dso_local i64 @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local %struct.device_node* @pcibios_get_phb_of_node(%struct.pci_bus*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
