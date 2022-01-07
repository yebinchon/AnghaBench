; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_pci_dma_bus_setup_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_pci_dma_bus_setup_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.iommu_table = type { i32* }
%struct.device_node = type { %struct.iommu_table**, %struct.device_node* }
%struct.pci_dn = type { %struct.device_node*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"pci_dma_bus_setup_pSeriesLP: setting up bus %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ibm,dma-window\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  no ibm,dma-window property !\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"  parent is %pOF, iommu_table: 0x%p\0A\00", align 1
@iommu_table_lpar_multi_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"  created table: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_dma_bus_setup_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_dma_bus_setup_pSeriesLP(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.iommu_table*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_dn*, align 8
  %7 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %9 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %8)
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.device_node* %10)
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %27

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 1
  %26 = load %struct.device_node*, %struct.device_node** %25, align 8
  store %struct.device_node* %26, %struct.device_node** %5, align 8
  br label %13

27:                                               ; preds = %21, %13
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %89

32:                                               ; preds = %27
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %33)
  store %struct.pci_dn* %34, %struct.pci_dn** %6, align 8
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %36, i32 0, i32 0
  %38 = load %struct.device_node*, %struct.device_node** %37, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %35, %struct.device_node* %38)
  %40 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %41 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %40, i32 0, i32 0
  %42 = load %struct.device_node*, %struct.device_node** %41, align 8
  %43 = icmp ne %struct.device_node* %42, null
  br i1 %43, label %89, label %44

44:                                               ; preds = %32
  %45 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %46 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.device_node* @iommu_pseries_alloc_group(i32 %49)
  %51 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %52 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %51, i32 0, i32 0
  store %struct.device_node* %50, %struct.device_node** %52, align 8
  %53 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %54 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %53, i32 0, i32 0
  %55 = load %struct.device_node*, %struct.device_node** %54, align 8
  %56 = getelementptr inbounds %struct.device_node, %struct.device_node* %55, i32 0, i32 0
  %57 = load %struct.iommu_table**, %struct.iommu_table*** %56, align 8
  %58 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %57, i64 0
  %59 = load %struct.iommu_table*, %struct.iommu_table** %58, align 8
  store %struct.iommu_table* %59, %struct.iommu_table** %3, align 8
  %60 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %61 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %65 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %66 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %65, i32 0, i32 0
  %67 = load %struct.device_node*, %struct.device_node** %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @iommu_table_setparms_lpar(%struct.TYPE_2__* %62, %struct.device_node* %63, %struct.iommu_table* %64, %struct.device_node* %67, i32* %68)
  %70 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %71 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %70, i32 0, i32 0
  store i32* @iommu_table_lpar_multi_ops, i32** %71, align 8
  %72 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %73 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %74 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iommu_init_table(%struct.iommu_table* %72, i32 %77, i32 0, i32 0)
  %79 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %80 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %79, i32 0, i32 0
  %81 = load %struct.device_node*, %struct.device_node** %80, align 8
  %82 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %83 = call i32 @pci_domain_nr(%struct.pci_bus* %82)
  %84 = call i32 @iommu_register_group(%struct.device_node* %81, i32 %83, i32 0)
  %85 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %86 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %85, i32 0, i32 0
  %87 = load %struct.device_node*, %struct.device_node** %86, align 8
  %88 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %87)
  br label %89

89:                                               ; preds = %30, %44, %32
  ret void
}

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local %struct.device_node* @iommu_pseries_alloc_group(i32) #1

declare dso_local i32 @iommu_table_setparms_lpar(%struct.TYPE_2__*, %struct.device_node*, %struct.iommu_table*, %struct.device_node*, i32*) #1

declare dso_local i32 @iommu_init_table(%struct.iommu_table*, i32, i32, i32) #1

declare dso_local i32 @iommu_register_group(%struct.device_node*, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
