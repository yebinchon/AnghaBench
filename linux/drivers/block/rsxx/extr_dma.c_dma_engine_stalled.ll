; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_dma_engine_stalled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_dma_engine_stalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { i32, %struct.TYPE_6__*, i32, i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@activity_timer = common dso_local global i32 0, align 4
@SW_CMD_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"SW_CMD_IDX write was lost, re-writing...\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DMA_ACTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"DMA channel %d has stalled, faulting interface.\0A\00", align 1
@COMPLETE_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Freed %d queued DMAs on channel %d\0A\00", align 1
@ctrl = common dso_local global %struct.rsxx_dma_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dma_engine_stalled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_engine_stalled(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rsxx_dma_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %6 = ptrtoint %struct.rsxx_dma_ctrl* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @activity_timer, align 4
  %9 = call %struct.rsxx_dma_ctrl* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.rsxx_dma_ctrl* %9, %struct.rsxx_dma_ctrl** %3, align 8
  %10 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %1
  br label %101

24:                                               ; preds = %15
  %25 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SW_CMD_IDX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @ioread32(i64 %33)
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @CARD_TO_DEV(%struct.TYPE_6__* %39)
  %41 = call i32 (i32, i8*, ...) @dev_warn(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SW_CMD_IDX, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32(i64 %45, i64 %50)
  %52 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %52, i32 0, i32 4
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @DMA_ACTIVITY_TIMEOUT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @mod_timer(i32* %53, i64 %56)
  br label %101

58:                                               ; preds = %24
  %59 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @CARD_TO_DEV(%struct.TYPE_6__* %61)
  %63 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %64 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_warn(i32 %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %71, i32 0, i32 2
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %75 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %75, i32 0, i32 3
  %77 = load i32, i32* @COMPLETE_DMA, align 4
  %78 = call i32 @rsxx_cleanup_dma_queue(%struct.rsxx_dma_ctrl* %74, i32* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %83 = call i64 @rsxx_dma_cancel(%struct.rsxx_dma_ctrl* %82)
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %58
  %91 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @CARD_TO_DEV(%struct.TYPE_6__* %93)
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %97 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_info(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %90, %58
  br label %101

101:                                              ; preds = %23, %100, %36
  ret void
}

declare dso_local %struct.rsxx_dma_ctrl* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @CARD_TO_DEV(%struct.TYPE_6__*) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rsxx_cleanup_dma_queue(%struct.rsxx_dma_ctrl*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @rsxx_dma_cancel(%struct.rsxx_dma_ctrl*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
