; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_of_create_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_of_create_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i64, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_3__*, %struct.TYPE_4__, i32, i8*, i8*, i8*, i8*, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.device_node = type { i32 }
%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"    create device, devfn: %x, type: %s\0A\00", align 1
@pci_bus_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"subsystem-vendor-id\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"subsystem-id\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"class-code\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"revision-id\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"    class: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"    revision: 0x%x\0A\00", align 1
@PCI_UNKNOWN = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@pci_fixup_early = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pciex\00", align 1
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"cardbus\00", align 1
@PCI_HEADER_TYPE_CARDBUS = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"    adding to system ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @of_create_pci_dev(%struct.device_node* %0, %struct.pci_bus* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %10 = call %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %8, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %148

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32 @of_node_get_device_type(%struct.device_node* %16)
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_node_get(%struct.device_node* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* @pci_bus_type, i32** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 17
  store i64 0, i64* %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 16
  store i64 0, i64* %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = call i32 @set_pcie_port_type(%struct.pci_dev* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %43 = call i32 @pci_dev_assign_slot(%struct.pci_dev* %42)
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i8* @get_int_prop(%struct.device_node* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 65535)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 15
  store i8* %45, i8** %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i8* @get_int_prop(%struct.device_node* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 65535)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 14
  store i8* %49, i8** %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call i8* @get_int_prop(%struct.device_node* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 13
  store i8* %53, i8** %55, align 8
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i8* @get_int_prop(%struct.device_node* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 12
  store i8* %57, i8** %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %61 = call i32 @pci_cfg_space_size(%struct.pci_dev* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 10
  %66 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %67 = call i32 @pci_domain_nr(%struct.pci_bus* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 9
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @PCI_SLOT(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @PCI_FUNC(i32 %75)
  %77 = call i32 @dev_set_name(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %72, i32 %74, i32 %76)
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i8* @get_int_prop(%struct.device_node* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i8* @get_int_prop(%struct.device_node* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @PCI_UNKNOWN, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @pci_channel_io_normal, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 4
  %102 = load i32, i32* @pci_fixup_early, align 4
  %103 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %104 = call i32 @pci_fixup_device(i32 %102, %struct.pci_dev* %103)
  %105 = load %struct.device_node*, %struct.device_node** %5, align 8
  %106 = call i64 @of_node_is_type(%struct.device_node* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %14
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = call i64 @of_node_is_type(%struct.device_node* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108, %14
  %113 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @PCI_ROM_ADDRESS1, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %120 = call i32 @set_pcie_hotplug_bridge(%struct.pci_dev* %119)
  br label %139

121:                                              ; preds = %108
  %122 = load %struct.device_node*, %struct.device_node** %5, align 8
  %123 = call i64 @of_node_is_type(%struct.device_node* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @PCI_HEADER_TYPE_CARDBUS, align 4
  %127 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %138

129:                                              ; preds = %121
  %130 = load i32, i32* @PCI_HEADER_TYPE_NORMAL, align 4
  %131 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %129, %125
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %142 = call i32 @of_pci_parse_addrs(%struct.device_node* %140, %struct.pci_dev* %141)
  %143 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %144 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %145 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %146 = call i32 @pci_device_add(%struct.pci_dev* %144, %struct.pci_bus* %145)
  %147 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %147, %struct.pci_dev** %4, align 8
  br label %148

148:                                              ; preds = %139, %13
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  ret %struct.pci_dev* %149
}

declare dso_local %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @of_node_get_device_type(%struct.device_node*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @set_pcie_port_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_assign_slot(%struct.pci_dev*) #1

declare dso_local i8* @get_int_prop(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pci_cfg_space_size(%struct.pci_dev*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_fixup_device(i32, %struct.pci_dev*) #1

declare dso_local i64 @of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i32 @set_pcie_hotplug_bridge(%struct.pci_dev*) #1

declare dso_local i32 @of_pci_parse_addrs(%struct.device_node*, %struct.pci_dev*) #1

declare dso_local i32 @pci_device_add(%struct.pci_dev*, %struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
