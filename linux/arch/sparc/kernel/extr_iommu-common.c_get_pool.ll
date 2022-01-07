; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_get_pool.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_pool = type { i64 }
%struct.iommu_map_table = type { i32, i64, i32, %struct.iommu_pool*, %struct.iommu_pool }

@IOMMU_HAS_LARGE_POOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_pool* (%struct.iommu_map_table*, i64)* @get_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_pool* @get_pool(%struct.iommu_map_table* %0, i64 %1) #0 {
  %3 = alloca %struct.iommu_map_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iommu_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iommu_map_table* %0, %struct.iommu_map_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %10 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %14 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IOMMU_HAS_LARGE_POOL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %28 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %27, i32 0, i32 4
  store %struct.iommu_pool* %28, %struct.iommu_pool** %5, align 8
  br label %49

29:                                               ; preds = %22, %2
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %32 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = udiv i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %38 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp uge i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.iommu_map_table*, %struct.iommu_map_table** %3, align 8
  %44 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %43, i32 0, i32 3
  %45 = load %struct.iommu_pool*, %struct.iommu_pool** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %45, i64 %47
  store %struct.iommu_pool* %48, %struct.iommu_pool** %5, align 8
  br label %49

49:                                               ; preds = %29, %26
  %50 = load %struct.iommu_pool*, %struct.iommu_pool** %5, align 8
  ret %struct.iommu_pool* %50
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
