; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_update_cache_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_update_cache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtio_blk* }
%struct.virtio_blk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtblk_update_cache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtblk_update_cache_mode(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_blk*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call i32 @virtblk_get_cache_mode(%struct.virtio_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 0
  %9 = load %struct.virtio_blk*, %struct.virtio_blk** %8, align 8
  store %struct.virtio_blk* %9, %struct.virtio_blk** %4, align 8
  %10 = load %struct.virtio_blk*, %struct.virtio_blk** %4, align 8
  %11 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @blk_queue_write_cache(i32 %14, i32 %15, i32 0)
  %17 = load %struct.virtio_blk*, %struct.virtio_blk** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @revalidate_disk(%struct.TYPE_2__* %19)
  ret void
}

declare dso_local i32 @virtblk_get_cache_mode(%struct.virtio_device*) #1

declare dso_local i32 @blk_queue_write_cache(i32, i32, i32) #1

declare dso_local i32 @revalidate_disk(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
