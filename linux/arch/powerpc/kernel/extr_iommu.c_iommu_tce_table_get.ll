; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_tce_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_tce_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_table* @iommu_tce_table_get(%struct.iommu_table* %0) #0 {
  %2 = alloca %struct.iommu_table*, align 8
  %3 = alloca %struct.iommu_table*, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %3, align 8
  %4 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %5 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %4, i32 0, i32 0
  %6 = call i64 @kref_get_unless_zero(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  store %struct.iommu_table* %9, %struct.iommu_table** %2, align 8
  br label %11

10:                                               ; preds = %1
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  ret %struct.iommu_table* %12
}

declare dso_local i64 @kref_get_unless_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
