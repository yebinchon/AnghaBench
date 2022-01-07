; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_random_recv_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_random_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtrng_info* }
%struct.virtrng_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @random_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_recv_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtrng_info*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.virtrng_info*, %struct.virtrng_info** %7, align 8
  store %struct.virtrng_info* %8, %struct.virtrng_info** %3, align 8
  %9 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %10 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %13 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %12, i32 0, i32 1
  %14 = call i32 @virtqueue_get_buf(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %19 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %18, i32 0, i32 0
  %20 = call i32 @complete(i32* %19)
  br label %21

21:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
