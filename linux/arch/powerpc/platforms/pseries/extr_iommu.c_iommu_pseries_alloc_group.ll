; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_pseries_alloc_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_pseries_alloc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table_group = type { %struct.iommu_table** }
%struct.iommu_table = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_table_group* (i32)* @iommu_pseries_alloc_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_table_group* @iommu_pseries_alloc_group(i32 %0) #0 {
  %2 = alloca %struct.iommu_table_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_table_group*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @kzalloc_node(i32 8, i32 %6, i32 %7)
  %9 = bitcast i8* %8 to %struct.iommu_table_group*
  store %struct.iommu_table_group* %9, %struct.iommu_table_group** %4, align 8
  %10 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %11 = icmp ne %struct.iommu_table_group* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.iommu_table_group* null, %struct.iommu_table_group** %2, align 8
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @kzalloc_node(i32 8, i32 %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.iommu_table*
  store %struct.iommu_table* %17, %struct.iommu_table** %5, align 8
  %18 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %19 = icmp ne %struct.iommu_table* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %23 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD_RCU(i32* %23)
  %25 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %26 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %25, i32 0, i32 0
  %27 = call i32 @kref_init(i32* %26)
  %28 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %29 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %30 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %29, i32 0, i32 0
  %31 = load %struct.iommu_table**, %struct.iommu_table*** %30, align 8
  %32 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %31, i64 0
  store %struct.iommu_table* %28, %struct.iommu_table** %32, align 8
  %33 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  store %struct.iommu_table_group* %33, %struct.iommu_table_group** %2, align 8
  br label %37

34:                                               ; preds = %20
  %35 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %36 = call i32 @kfree(%struct.iommu_table_group* %35)
  store %struct.iommu_table_group* null, %struct.iommu_table_group** %2, align 8
  br label %37

37:                                               ; preds = %34, %21, %12
  %38 = load %struct.iommu_table_group*, %struct.iommu_table_group** %2, align 8
  ret %struct.iommu_table_group* %38
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.iommu_table_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
