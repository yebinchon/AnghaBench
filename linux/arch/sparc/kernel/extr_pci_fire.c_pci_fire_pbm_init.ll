; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_fire.c_pci_fire_pbm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_fire.c_pci_fire_pbm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, %struct.pci_pbm_info*, i32, i32, i64, i64, %struct.platform_device*, i32, i64, i32*, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.linux_prom64_registers = type { i64 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@sun4u_pci_ops = common dso_local global i32 0, align 4
@pci_num_pbms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: SUN4U PCIE Bus Module\0A\00", align 1
@pci_pbm_root = common dso_local global %struct.pci_pbm_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, %struct.platform_device*, i32)* @pci_fire_pbm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fire_pbm_init(%struct.pci_pbm_info* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_pbm_info*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.linux_prom64_registers*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %9, align 8
  %15 = load i32, i32* @NUMA_NO_NODE, align 4
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 9
  store i32* @sun4u_pci_ops, i32** %19, align 8
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  store i32 12, i32* %21, align 8
  %22 = load i32, i32* @pci_num_pbms, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @pci_num_pbms, align 4
  %24 = sext i32 %22 to i64
  %25 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %26 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %25, i32 0, i32 8
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %29 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %31 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %32 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %31, i32 0, i32 6
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load %struct.device_node*, %struct.device_node** %9, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %37 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device_node*, %struct.device_node** %9, align 8
  %39 = call %struct.linux_prom64_registers* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.linux_prom64_registers* %39, %struct.linux_prom64_registers** %8, align 8
  %40 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %8, align 8
  %41 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %40, i64 0
  %42 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %45 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %8, align 8
  %47 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %46, i64 1
  %48 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 4259840
  %51 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %52 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %54 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %58 = call i32 @pci_determine_mem_io_space(%struct.pci_pbm_info* %57)
  %59 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %60 = call i32 @pci_get_pbm_props(%struct.pci_pbm_info* %59)
  %61 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %62 = call i32 @pci_fire_hw_init(%struct.pci_pbm_info* %61)
  %63 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %64 = call i32 @pci_fire_pbm_iommu_init(%struct.pci_pbm_info* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %3
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %3
  %70 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %71 = call i32 @pci_fire_msi_init(%struct.pci_pbm_info* %70)
  %72 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @pci_scan_one_pbm(%struct.pci_pbm_info* %72, %struct.TYPE_2__* %74)
  %76 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %77 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** @pci_pbm_root, align 8
  %79 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %80 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %79, i32 0, i32 1
  store %struct.pci_pbm_info* %78, %struct.pci_pbm_info** %80, align 8
  %81 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  store %struct.pci_pbm_info* %81, %struct.pci_pbm_info** @pci_pbm_root, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %69, %67
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.linux_prom64_registers* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @pci_determine_mem_io_space(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_get_pbm_props(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_fire_hw_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_fire_pbm_iommu_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_fire_msi_init(%struct.pci_pbm_info*) #1

declare dso_local i32 @pci_scan_one_pbm(%struct.pci_pbm_info*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
