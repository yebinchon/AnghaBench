; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i32, i8*, i8*, i32, i64, i64, i64, %struct.platform_device*, i32, i64, i32*, i32, %struct.pci_pbm_info* }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.linux_prom64_registers = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"TOMATILLO\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SCHIZO+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SCHIZO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@pci_pbm_root = common dso_local global %struct.pci_pbm_info* null, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@sun4u_pci_ops = common dso_local global i32 0, align 4
@pci_num_pbms = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"version#\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"module-version#\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: %s PCI Bus Module ver[%x:%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, %struct.platform_device*, i32, i32)* @schizo_pbm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_pbm_init(%struct.pci_pbm_info* %0, %struct.platform_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.linux_prom64_registers*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %11, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %22 [
    i32 128, label %19
    i32 129, label %20
    i32 130, label %21
  ]

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %23

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %23

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %4, %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %23

23:                                               ; preds = %22, %20, %19
  %24 = load %struct.device_node*, %struct.device_node** %11, align 8
  %25 = call %struct.linux_prom64_registers* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.linux_prom64_registers* %25, %struct.linux_prom64_registers** %10, align 8
  %26 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** @pci_pbm_root, align 8
  %27 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %28 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %27, i32 0, i32 13
  store %struct.pci_pbm_info* %26, %struct.pci_pbm_info** %28, align 8
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  store %struct.pci_pbm_info* %29, %struct.pci_pbm_info** @pci_pbm_root, align 8
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %32 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %34 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %33, i32 0, i32 11
  store i32* @sun4u_pci_ops, i32** %34, align 8
  %35 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %36 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %35, i32 0, i32 0
  store i32 8, i32* %36, align 8
  %37 = load i32, i32* @pci_num_pbms, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @pci_num_pbms, align 4
  %39 = sext i32 %37 to i64
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %41 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %40, i32 0, i32 10
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %44 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %46 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %47 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %46, i32 0, i32 8
  store %struct.platform_device* %45, %struct.platform_device** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %50 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.device_node*, %struct.device_node** %11, align 8
  %52 = call i8* @of_getintprop_default(%struct.device_node* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %53 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %54 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.device_node*, %struct.device_node** %11, align 8
  %56 = call i8* @of_getintprop_default(%struct.device_node* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %57 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %58 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %10, align 8
  %60 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %59, i64 0
  %61 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %64 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %63, i32 0, i32 7
  store i64 %62, i64* %64, align 8
  %65 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %10, align 8
  %66 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %65, i64 1
  %67 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 65536
  %70 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %71 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %70, i32 0, i32 6
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %82

74:                                               ; preds = %23
  %75 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %10, align 8
  %76 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %75, i64 3
  %77 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 6680
  %80 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %81 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %74, %23
  %83 = load %struct.device_node*, %struct.device_node** %11, align 8
  %84 = getelementptr inbounds %struct.device_node, %struct.device_node* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %87 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %89 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %93 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %96 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %90, i8* %91, i8* %94, i8* %97)
  %99 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %100 = call i32 @schizo_pbm_hw_init(%struct.pci_pbm_info* %99)
  %101 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %102 = call i32 @pci_determine_mem_io_space(%struct.pci_pbm_info* %101)
  %103 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %104 = call i32 @pci_get_pbm_props(%struct.pci_pbm_info* %103)
  %105 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %106 = call i32 @schizo_pbm_iommu_init(%struct.pci_pbm_info* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %82
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %118

111:                                              ; preds = %82
  %112 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %113 = call i32 @schizo_pbm_strbuf_init(%struct.pci_pbm_info* %112)
  %114 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @schizo_scan_bus(%struct.pci_pbm_info* %114, %struct.TYPE_2__* %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %111, %109
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.linux_prom64_registers* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_getintprop_default(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @schizo_pbm_hw_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_determine_mem_io_space(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_get_pbm_props(%struct.pci_pbm_info*) #1

declare dso_local i32 @schizo_pbm_iommu_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @schizo_pbm_strbuf_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @schizo_scan_bus(%struct.pci_pbm_info*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
