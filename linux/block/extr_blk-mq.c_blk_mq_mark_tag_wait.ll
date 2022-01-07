; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_mark_tag_wait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_mark_tag_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.sbitmap_queue }
%struct.sbitmap_queue = type { i32 }
%struct.request = type { i32 }
%struct.wait_queue_head = type { i32 }
%struct.TYPE_7__ = type { %struct.wait_queue_head }

@BLK_MQ_F_TAG_SHARED = common dso_local global i32 0, align 4
@WQ_FLAG_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.request*)* @blk_mq_mark_tag_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_mark_tag_wait(%struct.blk_mq_hw_ctx* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.sbitmap_queue*, align 8
  %7 = alloca %struct.wait_queue_head*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.sbitmap_queue* %13, %struct.sbitmap_queue** %6, align 8
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BLK_MQ_F_TAG_SHARED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %22 = call i32 @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* %21)
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = call i32 @blk_mq_get_driver_tag(%struct.request* %23)
  store i32 %24, i32* %3, align 4
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %26, i32 0, i32 2
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @list_empty_careful(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %6, align 8
  %35 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %36 = call %struct.TYPE_7__* @bt_wait_ptr(%struct.sbitmap_queue* %34, %struct.blk_mq_hw_ctx* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.wait_queue_head* %37, %struct.wait_queue_head** %7, align 8
  %38 = load %struct.wait_queue_head*, %struct.wait_queue_head** %7, align 8
  %39 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %33
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.wait_queue_head*, %struct.wait_queue_head** %7, align 8
  %53 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  store i32 0, i32* %3, align 4
  br label %92

55:                                               ; preds = %33
  %56 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %6, align 8
  %57 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %56, i32 0, i32 0
  %58 = call i32 @atomic_inc(i32* %57)
  %59 = load i32, i32* @WQ_FLAG_EXCLUSIVE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.wait_queue_head*, %struct.wait_queue_head** %7, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = call i32 @__add_wait_queue(%struct.wait_queue_head* %65, %struct.TYPE_6__* %66)
  %68 = load %struct.request*, %struct.request** %5, align 8
  %69 = call i32 @blk_mq_get_driver_tag(%struct.request* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %55
  %73 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.wait_queue_head*, %struct.wait_queue_head** %7, align 8
  %77 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  store i32 0, i32* %3, align 4
  br label %92

79:                                               ; preds = %55
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @list_del_init(i32* %81)
  %83 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %6, align 8
  %84 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %83, i32 0, i32 0
  %85 = call i32 @atomic_dec(i32* %84)
  %86 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.wait_queue_head*, %struct.wait_queue_head** %7, align 8
  %90 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_irq(i32* %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %79, %72, %48, %32, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_get_driver_tag(%struct.request*) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local %struct.TYPE_7__* @bt_wait_ptr(%struct.sbitmap_queue*, %struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__add_wait_queue(%struct.wait_queue_head*, %struct.TYPE_6__*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
