; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_device_post_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_device_post_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.drbd_connection = type { i32, %struct.drbd_work_queue }
%struct.drbd_work_queue = type { i32 }
%struct.TYPE_2__ = type { %struct.drbd_connection* }

@DEVICE_WORK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i32)* @drbd_device_post_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_device_post_work(%struct.drbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_connection*, align 8
  %6 = alloca %struct.drbd_work_queue*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 0
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %14 = call %struct.TYPE_2__* @first_peer_device(%struct.drbd_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drbd_connection*, %struct.drbd_connection** %15, align 8
  store %struct.drbd_connection* %16, %struct.drbd_connection** %5, align 8
  %17 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %18 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %17, i32 0, i32 1
  store %struct.drbd_work_queue* %18, %struct.drbd_work_queue** %6, align 8
  %19 = load i32, i32* @DEVICE_WORK_PENDING, align 4
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 0
  %22 = call i32 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load %struct.drbd_work_queue*, %struct.drbd_work_queue** %6, align 8
  %26 = getelementptr inbounds %struct.drbd_work_queue, %struct.drbd_work_queue* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  br label %28

28:                                               ; preds = %24, %12
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
