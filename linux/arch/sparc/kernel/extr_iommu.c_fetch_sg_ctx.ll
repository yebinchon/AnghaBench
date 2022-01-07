; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_fetch_sg_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_fetch_sg_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32*, %struct.iommu_map_table, i64 }
%struct.iommu_map_table = type { i32 }
%struct.scatterlist = type { i32 }

@IO_PAGE_MASK = common dso_local global i32 0, align 4
@IO_PAGE_SHIFT = common dso_local global i32 0, align 4
@IOPTE_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu*, %struct.scatterlist*)* @fetch_sg_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fetch_sg_ctx(%struct.iommu* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.iommu*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iommu_map_table*, align 8
  store %struct.iommu* %0, %struct.iommu** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.iommu*, %struct.iommu** %3, align 8
  %10 = getelementptr inbounds %struct.iommu, %struct.iommu* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.iommu*, %struct.iommu** %3, align 8
  %15 = getelementptr inbounds %struct.iommu, %struct.iommu* %14, i32 0, i32 1
  store %struct.iommu_map_table* %15, %struct.iommu_map_table** %8, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %17 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IO_PAGE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.iommu*, %struct.iommu** %3, align 8
  %22 = getelementptr inbounds %struct.iommu, %struct.iommu* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %26 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %23, i64 %31
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @iopte_val(i32 %34)
  %36 = load i64, i64* @IOPTE_CONTEXT, align 8
  %37 = and i64 %35, %36
  %38 = lshr i64 %37, 47
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %13, %2
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local i64 @iopte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
