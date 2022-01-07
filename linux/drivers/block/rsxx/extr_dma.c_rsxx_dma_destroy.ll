; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, %struct.TYPE_5__*, %struct.rsxx_dma_ctrl* }
%struct.TYPE_5__ = type { i32 }
%struct.rsxx_dma_ctrl = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@COMPLETE_DMA = common dso_local global i32 0, align 4
@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsxx_dma_destroy(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  %3 = alloca %struct.rsxx_dma_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %96, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %8 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %5
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 2
  %14 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %14, i64 %16
  store %struct.rsxx_dma_ctrl* %17, %struct.rsxx_dma_ctrl** %3, align 8
  %18 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @destroy_workqueue(i32* %25)
  %27 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %27, i32 0, i32 7
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %11
  %30 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @destroy_workqueue(i32* %37)
  %39 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %42, i32 0, i32 5
  %44 = call i64 @timer_pending(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %47, i32 0, i32 5
  %49 = call i32 @del_timer_sync(i32* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %51, i32 0, i32 3
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %55 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %55, i32 0, i32 4
  %57 = load i32, i32* @COMPLETE_DMA, align 4
  %58 = call i32 @rsxx_cleanup_dma_queue(%struct.rsxx_dma_ctrl* %54, i32* %56, i32 %57)
  %59 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %59, i32 0, i32 3
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %63 = call i32 @rsxx_dma_cancel(%struct.rsxx_dma_ctrl* %62)
  %64 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vfree(i32 %66)
  %68 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %69 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %73 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %74 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_free_coherent(i32* %71, i32 %72, i32 %76, i32 %80)
  %82 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %83 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %87 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_free_coherent(i32* %85, i32 %86, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %50
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %5

99:                                               ; preds = %5
  ret void
}

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rsxx_cleanup_dma_queue(%struct.rsxx_dma_ctrl*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rsxx_dma_cancel(%struct.rsxx_dma_ctrl*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
