; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_queue_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_queue_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@D_INCONSISTENT = common dso_local global i64 0, align 8
@C_CONNECTED = common dso_local global i64 0, align 8
@R_PRIMARY = common dso_local global i64 0, align 8
@UNPLUG_REMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_queue_unplug(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %3 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @D_INCONSISTENT, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @C_CONNECTED, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %9
  %17 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %18 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @R_PRIMARY, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @D_ASSERT(%struct.drbd_device* %17, i32 %24)
  %26 = load i32, i32* @UNPLUG_REMOTE, align 4
  %27 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 1
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %33 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %38 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %37, i32 0, i32 0
  %39 = call i32 @drbd_queue_work_if_unqueued(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %31, %16
  br label %41

41:                                               ; preds = %40, %9, %1
  ret void
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @drbd_queue_work_if_unqueued(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
