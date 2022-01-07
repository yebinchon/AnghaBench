; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_pseries_free_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_pseries_free_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table_group = type { i64, %struct.iommu_table** }
%struct.iommu_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table_group*, i8*)* @iommu_pseries_free_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_pseries_free_group(%struct.iommu_table_group* %0, i8* %1) #0 {
  %3 = alloca %struct.iommu_table_group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  store %struct.iommu_table_group* %0, %struct.iommu_table_group** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.iommu_table_group*, %struct.iommu_table_group** %3, align 8
  %7 = icmp ne %struct.iommu_table_group* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %19

9:                                                ; preds = %2
  %10 = load %struct.iommu_table_group*, %struct.iommu_table_group** %3, align 8
  %11 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %10, i32 0, i32 1
  %12 = load %struct.iommu_table**, %struct.iommu_table*** %11, align 8
  %13 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %12, i64 0
  %14 = load %struct.iommu_table*, %struct.iommu_table** %13, align 8
  store %struct.iommu_table* %14, %struct.iommu_table** %5, align 8
  %15 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %16 = call i32 @iommu_tce_table_put(%struct.iommu_table* %15)
  %17 = load %struct.iommu_table_group*, %struct.iommu_table_group** %3, align 8
  %18 = call i32 @kfree(%struct.iommu_table_group* %17)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @iommu_tce_table_put(%struct.iommu_table*) #1

declare dso_local i32 @kfree(%struct.iommu_table_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
