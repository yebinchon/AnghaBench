; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_dec_ap_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_dec_ap_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BITMAP_IO = common dso_local global i32 0, align 4
@BITMAP_IO_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*)* @dec_ap_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_ap_bio(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = call i32 @drbd_get_max_buffers(%struct.drbd_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %7, i32 0, i32 3
  %9 = call i32 @atomic_dec_return(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @D_ASSERT(%struct.drbd_device* %10, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load i32, i32* @BITMAP_IO, align 4
  %19 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %20 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load i32, i32* @BITMAP_IO_QUEUED, align 4
  %25 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 2
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %31 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @drbd_queue_work(i32* %34, i32* %37)
  br label %39

39:                                               ; preds = %29, %23
  br label %40

40:                                               ; preds = %39, %17, %1
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %46 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %45, i32 0, i32 0
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @drbd_get_max_buffers(%struct.drbd_device*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @drbd_queue_work(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
