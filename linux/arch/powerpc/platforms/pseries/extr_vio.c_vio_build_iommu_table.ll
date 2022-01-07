; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_build_iommu_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_build_iommu_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64, i64, i32, i32*, i32, i64, i32 }
%struct.vio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ibm,my-dma-window\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOMMU_PAGE_SHIFT_4K = common dso_local global i64 0, align 8
@TCE_VB = common dso_local global i32 0, align 4
@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@iommu_table_lpar_multi_ops = common dso_local global i32 0, align 4
@iommu_table_pseries_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_table* (%struct.vio_dev*)* @vio_build_iommu_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_table* @vio_build_iommu_table(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.iommu_table*, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %8 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @of_get_property(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %67

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.iommu_table* @kzalloc(i32 64, i32 %17)
  store %struct.iommu_table* %18, %struct.iommu_table** %5, align 8
  %19 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %20 = icmp eq %struct.iommu_table* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %67

22:                                               ; preds = %16
  %23 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %24 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %29 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %28, i32 0, i32 7
  %30 = call i32 @of_parse_dma_window(i32 %26, i32* %27, i32* %29, i64* %6, i64* %7)
  %31 = load i64, i64* @IOMMU_PAGE_SHIFT_4K, align 8
  %32 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %33 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %36 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = lshr i64 %34, %37
  %39 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %40 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %43 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %41, %44
  %46 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %47 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %49 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @TCE_VB, align 4
  %51 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %52 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %54 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %53, i32 0, i32 3
  store i32 16, i32* %54, align 8
  %55 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %56 = call i64 @firmware_has_feature(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %22
  %59 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %60 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %59, i32 0, i32 4
  store i32* @iommu_table_lpar_multi_ops, i32** %60, align 8
  br label %64

61:                                               ; preds = %22
  %62 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %63 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %62, i32 0, i32 4
  store i32* @iommu_table_pseries_ops, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %66 = call %struct.iommu_table* @iommu_init_table(%struct.iommu_table* %65, i32 -1, i32 0, i32 0)
  store %struct.iommu_table* %66, %struct.iommu_table** %2, align 8
  br label %67

67:                                               ; preds = %64, %21, %15
  %68 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  ret %struct.iommu_table* %68
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local %struct.iommu_table* @kzalloc(i32, i32) #1

declare dso_local i32 @of_parse_dma_window(i32, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local %struct.iommu_table* @iommu_init_table(%struct.iommu_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
