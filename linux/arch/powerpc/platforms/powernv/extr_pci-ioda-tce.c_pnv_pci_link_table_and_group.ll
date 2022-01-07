; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_link_table_and_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_pci_link_table_and_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32 }
%struct.iommu_table_group = type { i32* }
%struct.iommu_table_group_link = type { i32, %struct.iommu_table_group* }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pnv_pci_link_table_and_group(i32 %0, i32 %1, %struct.iommu_table* %2, %struct.iommu_table_group* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iommu_table*, align 8
  %9 = alloca %struct.iommu_table_group*, align 8
  %10 = alloca %struct.iommu_table_group_link*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.iommu_table* %2, %struct.iommu_table** %8, align 8
  store %struct.iommu_table_group* %3, %struct.iommu_table_group** %9, align 8
  store %struct.iommu_table_group_link* null, %struct.iommu_table_group_link** %10, align 8
  %11 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %12 = icmp ne %struct.iommu_table* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.iommu_table_group*, %struct.iommu_table_group** %9, align 8
  %15 = icmp ne %struct.iommu_table_group* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ true, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %51

25:                                               ; preds = %17
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.iommu_table_group_link* @kzalloc_node(i32 16, i32 %26, i32 %27)
  store %struct.iommu_table_group_link* %28, %struct.iommu_table_group_link** %10, align 8
  %29 = load %struct.iommu_table_group_link*, %struct.iommu_table_group_link** %10, align 8
  %30 = icmp ne %struct.iommu_table_group_link* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %51

34:                                               ; preds = %25
  %35 = load %struct.iommu_table_group*, %struct.iommu_table_group** %9, align 8
  %36 = load %struct.iommu_table_group_link*, %struct.iommu_table_group_link** %10, align 8
  %37 = getelementptr inbounds %struct.iommu_table_group_link, %struct.iommu_table_group_link* %36, i32 0, i32 1
  store %struct.iommu_table_group* %35, %struct.iommu_table_group** %37, align 8
  %38 = load %struct.iommu_table_group_link*, %struct.iommu_table_group_link** %10, align 8
  %39 = getelementptr inbounds %struct.iommu_table_group_link, %struct.iommu_table_group_link* %38, i32 0, i32 0
  %40 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %41 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %40, i32 0, i32 0
  %42 = call i32 @list_add_rcu(i32* %39, i32* %41)
  %43 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %44 = call i32 @iommu_tce_table_get(%struct.iommu_table* %43)
  %45 = load %struct.iommu_table_group*, %struct.iommu_table_group** %9, align 8
  %46 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %34, %31, %22
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.iommu_table_group_link* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @iommu_tce_table_get(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
