; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_can_do_reliable_discards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_can_do_reliable_discards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.request_queue = type { i32 }
%struct.disk_conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*)* @can_do_reliable_discards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_do_reliable_discards(%struct.drbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.disk_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %7 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.request_queue* @bdev_get_queue(i32 %11)
  store %struct.request_queue* %12, %struct.request_queue** %4, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = call i32 @blk_queue_discard(%struct.request_queue* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.disk_conf* @rcu_dereference(i32 %23)
  store %struct.disk_conf* %24, %struct.disk_conf** %5, align 8
  %25 = load %struct.disk_conf*, %struct.disk_conf** %5, align 8
  %26 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.disk_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
