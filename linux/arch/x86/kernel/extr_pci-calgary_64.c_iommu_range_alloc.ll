; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_iommu_range_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_iommu_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iommu_table*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"IOMMU full\0A\00", align 1
@panic_on_overflow = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Calgary: fix the allocator.\0A\00", align 1
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i32)* @iommu_range_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_range_alloc(%struct.device* %0, %struct.iommu_table* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i64 @dma_get_seg_boundary(%struct.device* %11)
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i64 @ALIGN(i64 %13, i32 %14)
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %23 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %22, i32 0, i32 2
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %27 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %30 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %33 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @iommu_area_alloc(i32 %28, i64 %31, i64 %34, i32 %35, i32 0, i64 %36, i32 0)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %73

40:                                               ; preds = %3
  %41 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %42 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** %44, align 8
  %46 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %47 = call i32 %45(%struct.iommu_table* %46)
  %48 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %49 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %52 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @iommu_area_alloc(i32 %50, i64 %53, i64 0, i32 %54, i32 0, i64 %55, i32 0)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %72

59:                                               ; preds = %40
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %62 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %61, i32 0, i32 2
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i64, i64* @panic_on_overflow, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %71

69:                                               ; preds = %59
  %70 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %94

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %79 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %81 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %84 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %90 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %89, i32 0, i32 2
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %73, %69
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i32, i32, i64, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
