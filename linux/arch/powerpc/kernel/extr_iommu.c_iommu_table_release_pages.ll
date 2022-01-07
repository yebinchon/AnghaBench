; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_table_release_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_table_release_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*)* @iommu_table_release_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_table_release_pages(%struct.iommu_table* %0) #0 {
  %2 = alloca %struct.iommu_table*, align 8
  %3 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %2, align 8
  %4 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %5 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %10 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clear_bit(i64 0, i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %15 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %13
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %20 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %27 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  %31 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clear_bit(i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  ret void
}

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
