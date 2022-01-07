; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.virtio_blk* }
%struct.virtio_blk = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.virtblk_req = type { i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtblk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtblk_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_blk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtblk_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %10 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.virtio_blk*, %struct.virtio_blk** %13, align 8
  store %struct.virtio_blk* %14, %struct.virtio_blk** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %16 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %53, %1
  %28 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %29 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %28)
  br label %30

30:                                               ; preds = %41, %27
  %31 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %32 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.virtblk_req* @virtqueue_get_buf(i32 %38, i32* %8)
  store %struct.virtblk_req* %39, %struct.virtblk_req** %6, align 8
  %40 = icmp ne %struct.virtblk_req* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.virtblk_req*, %struct.virtblk_req** %6, align 8
  %43 = call %struct.request* @blk_mq_rq_from_pdu(%struct.virtblk_req* %42)
  store %struct.request* %43, %struct.request** %9, align 8
  %44 = load %struct.request*, %struct.request** %9, align 8
  %45 = call i32 @blk_mq_complete_request(%struct.request* %44)
  store i32 1, i32* %4, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %48 = call i32 @virtqueue_is_broken(%struct.virtqueue* %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %58

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %55 = call i32 @virtqueue_enable_cb(%struct.virtqueue* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %27, label %58

58:                                               ; preds = %53, %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %63 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @blk_mq_start_stopped_hw_queues(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %61, %58
  %69 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %70 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local %struct.virtblk_req* @virtqueue_get_buf(i32, i32*) #1

declare dso_local %struct.request* @blk_mq_rq_from_pdu(%struct.virtblk_req*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtqueue_is_broken(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_enable_cb(%struct.virtqueue*) #1

declare dso_local i32 @blk_mq_start_stopped_hw_queues(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
