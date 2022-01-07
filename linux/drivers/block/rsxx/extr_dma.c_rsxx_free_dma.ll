; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rsxx_dma = type { i64, i32 }

@HW_CMD_BLK_DISCARD = common dso_local global i64 0, align 8
@HW_CMD_BLK_WRITE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rsxx_dma_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*)* @rsxx_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_free_dma(%struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma* %1) #0 {
  %3 = alloca %struct.rsxx_dma_ctrl*, align 8
  %4 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %3, align 8
  store %struct.rsxx_dma* %1, %struct.rsxx_dma** %4, align 8
  %5 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %6 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %18 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dma_mapping_error(i32* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %10
  %23 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %30 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %33 = call i32 @get_dma_size(%struct.rsxx_dma* %32)
  %34 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %35 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @dma_unmap_page(i32* %28, i32 %31, i32 %33, i32 %44)
  br label %46

46:                                               ; preds = %43, %10
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* @rsxx_dma_pool, align 4
  %49 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %50 = call i32 @kmem_cache_free(i32 %48, %struct.rsxx_dma* %49)
  ret void
}

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @get_dma_size(%struct.rsxx_dma*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rsxx_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
