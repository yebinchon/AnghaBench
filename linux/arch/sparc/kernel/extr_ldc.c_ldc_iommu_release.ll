; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_iommu_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_iommu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, %struct.ldc_iommu }
%struct.ldc_iommu = type { i32*, %struct.iommu_map_table }
%struct.iommu_map_table = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ldc_channel*)* @ldc_iommu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldc_iommu_release(%struct.ldc_channel* %0) #0 {
  %2 = alloca %struct.ldc_channel*, align 8
  %3 = alloca %struct.ldc_iommu*, align 8
  %4 = alloca %struct.iommu_map_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %2, align 8
  %8 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %9 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %8, i32 0, i32 1
  store %struct.ldc_iommu* %9, %struct.ldc_iommu** %3, align 8
  %10 = load %struct.ldc_iommu*, %struct.ldc_iommu** %3, align 8
  %11 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %10, i32 0, i32 1
  store %struct.iommu_map_table* %11, %struct.iommu_map_table** %4, align 8
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sun4v_ldc_set_map_table(i32 %14, i32 0, i32 0)
  %16 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %17 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %20 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %23, 4
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @get_order(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ldc_iommu*, %struct.ldc_iommu** %3, align 8
  %28 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @free_pages(i64 %30, i64 %31)
  %33 = load %struct.ldc_iommu*, %struct.ldc_iommu** %3, align 8
  %34 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %36 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %40 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local i32 @sun4v_ldc_set_map_table(i32, i32, i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
