; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_sync_single_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu.c_dma_4u_sync_single_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64, i32 }
%struct.iommu = type { i32, i32*, %struct.iommu_map_table, i64 }
%struct.iommu_map_table = type { i64 }

@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOPTE_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32)* @dma_4u_sync_single_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_sync_single_for_cpu(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.iommu_map_table*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.iommu*, %struct.iommu** %18, align 8
  store %struct.iommu* %19, %struct.iommu** %9, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.strbuf*, %struct.strbuf** %22, align 8
  store %struct.strbuf* %23, %struct.strbuf** %10, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %89

29:                                               ; preds = %4
  %30 = load %struct.iommu*, %struct.iommu** %9, align 8
  %31 = getelementptr inbounds %struct.iommu, %struct.iommu* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @IO_PAGE_ALIGN(i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IO_PAGE_MASK, align 8
  %40 = and i64 %38, %39
  %41 = sub i64 %37, %40
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %43 = load i64, i64* %13, align 8
  %44 = lshr i64 %43, %42
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* @IO_PAGE_MASK, align 8
  %46 = load i64, i64* %6, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %6, align 8
  store i64 0, i64* %12, align 8
  %48 = load %struct.iommu*, %struct.iommu** %9, align 8
  %49 = getelementptr inbounds %struct.iommu, %struct.iommu* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %29
  %53 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.iommu*, %struct.iommu** %9, align 8
  %59 = getelementptr inbounds %struct.iommu, %struct.iommu* %58, i32 0, i32 2
  store %struct.iommu_map_table* %59, %struct.iommu_map_table** %15, align 8
  %60 = load %struct.iommu*, %struct.iommu** %9, align 8
  %61 = getelementptr inbounds %struct.iommu, %struct.iommu* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.iommu_map_table*, %struct.iommu_map_table** %15, align 8
  %65 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %69 = lshr i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @iopte_val(i32 %72)
  %74 = load i64, i64* @IOPTE_CONTEXT, align 8
  %75 = and i64 %73, %74
  %76 = lshr i64 %75, 47
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %57, %52, %29
  %78 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %79 = load %struct.iommu*, %struct.iommu** %9, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @strbuf_flush(%struct.strbuf* %78, %struct.iommu* %79, i64 %80, i64 %81, i64 %82, i32 %83)
  %85 = load %struct.iommu*, %struct.iommu** %9, align 8
  %86 = getelementptr inbounds %struct.iommu, %struct.iommu* %85, i32 0, i32 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %77, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i64 @iopte_val(i32) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i64, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
