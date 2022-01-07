; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-stat.c_blk_alloc_queue_stats.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-stat.c_blk_alloc_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_queue_stats = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blk_queue_stats* @blk_alloc_queue_stats() #0 {
  %1 = alloca %struct.blk_queue_stats*, align 8
  %2 = alloca %struct.blk_queue_stats*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.blk_queue_stats* @kmalloc(i32 12, i32 %3)
  store %struct.blk_queue_stats* %4, %struct.blk_queue_stats** %2, align 8
  %5 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %2, align 8
  %6 = icmp ne %struct.blk_queue_stats* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.blk_queue_stats* null, %struct.blk_queue_stats** %1, align 8
  br label %18

8:                                                ; preds = %0
  %9 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %2, align 8
  %10 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %2, align 8
  %13 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %2, align 8
  %16 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %2, align 8
  store %struct.blk_queue_stats* %17, %struct.blk_queue_stats** %1, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %1, align 8
  ret %struct.blk_queue_stats* %19
}

declare dso_local %struct.blk_queue_stats* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
