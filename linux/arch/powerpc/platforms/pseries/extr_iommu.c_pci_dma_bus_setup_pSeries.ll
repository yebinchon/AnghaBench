; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_pci_dma_bus_setup_pSeries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_pci_dma_bus_setup_pSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }
%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node* }
%struct.iommu_table = type { i32* }
%struct.pci_dn = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.iommu_table** }

@.str = private unnamed_addr constant [48 x i8] c"pci_dma_bus_setup_pSeries: setting up bus %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Children: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No ISA/IDE, window size is 0x%llx\0A\00", align 1
@iommu_table_pseries_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ISA/IDE, window size is 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_dma_bus_setup_pSeries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_dma_bus_setup_pSeries(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pci_dn*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %11 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %10)
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.device_node* %12)
  %14 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %157

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %20)
  store %struct.pci_dn* %21, %struct.pci_dn** %8, align 8
  %22 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %22, %struct.device_node** %6, align 8
  store %struct.device_node* %22, %struct.device_node** %5, align 8
  br label %23

23:                                               ; preds = %32, %19
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = icmp ne %struct.device_node* %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 2
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  store %struct.device_node* %35, %struct.device_node** %5, align 8
  br label %23

36:                                               ; preds = %30
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  store i32 0, i32* %9, align 4
  %39 = load %struct.device_node*, %struct.device_node** %3, align 8
  %40 = getelementptr inbounds %struct.device_node, %struct.device_node* %39, i32 0, i32 1
  %41 = load %struct.device_node*, %struct.device_node** %40, align 8
  store %struct.device_node* %41, %struct.device_node** %7, align 8
  br label %42

42:                                               ; preds = %48, %36
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = getelementptr inbounds %struct.device_node, %struct.device_node* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %50, align 8
  store %struct.device_node* %51, %struct.device_node** %7, align 8
  br label %42

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = icmp ne %struct.device_node* %55, null
  br i1 %56, label %90, label %57

57:                                               ; preds = %52
  %58 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %59 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 -2147483648, i32* %61, align 4
  br label %62

62:                                               ; preds = %72, %57
  %63 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %64 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = icmp ugt i64 %70, 2147483648
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %74 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %81 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %87 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %157

90:                                               ; preds = %52
  %91 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %92 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 134217728, i32* %94, align 4
  %95 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %96 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 134217728, i32* %98, align 4
  %99 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %100 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_4__* @iommu_pseries_alloc_group(i32 %103)
  %105 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %106 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %105, i32 0, i32 1
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %108 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.iommu_table**, %struct.iommu_table*** %110, align 8
  %112 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %111, i64 0
  %113 = load %struct.iommu_table*, %struct.iommu_table** %112, align 8
  store %struct.iommu_table* %113, %struct.iommu_table** %4, align 8
  %114 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %115 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load %struct.device_node*, %struct.device_node** %3, align 8
  %118 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %119 = call i32 @iommu_table_setparms(%struct.TYPE_3__* %116, %struct.device_node* %117, %struct.iommu_table* %118)
  %120 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %121 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %120, i32 0, i32 0
  store i32* @iommu_table_pseries_ops, i32** %121, align 8
  %122 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %123 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %124 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @iommu_init_table(%struct.iommu_table* %122, i32 %127, i32 0, i32 0)
  %129 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %130 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 -2147483648, i32* %132, align 4
  br label %133

133:                                              ; preds = %143, %90
  %134 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %135 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = icmp ugt i64 %141, 1879048192
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %145 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %133

150:                                              ; preds = %133
  %151 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %152 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %150, %79, %18
  ret void
}

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.TYPE_4__* @iommu_pseries_alloc_group(i32) #1

declare dso_local i32 @iommu_table_setparms(%struct.TYPE_3__*, %struct.device_node*, %struct.iommu_table*) #1

declare dso_local i32 @iommu_init_table(%struct.iommu_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
