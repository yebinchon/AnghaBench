; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_dma_supported.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_dma_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_table = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"iommu: 64-bit OK, using fixed ops\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Warning: IOMMU dma not supported: mask 0x%08llx, table unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Warning: IOMMU offset too big for device mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mask: 0x%08llx, table offset: 0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"iommu: not 64-bit, using default ops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_iommu_dma_supported(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_table*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.iommu_table* @get_iommu_table_base(%struct.device* %7)
  store %struct.iommu_table* %8, %struct.iommu_table** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @dev_is_pci(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @dma_iommu_bypass_supported(%struct.device* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

23:                                               ; preds = %12, %2
  %24 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %25 = icmp ne %struct.iommu_table* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %59

30:                                               ; preds = %23
  %31 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %32 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %36 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = icmp sgt i32 %33, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %46 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %49 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  %52 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %51)
  store i32 0, i32* %3, align 4
  br label %59

53:                                               ; preds = %30
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %40, %26, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.iommu_table* @get_iommu_table_base(%struct.device*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i64 @dma_iommu_bypass_supported(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
