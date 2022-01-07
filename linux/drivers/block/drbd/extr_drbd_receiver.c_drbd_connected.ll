; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__*, %struct.drbd_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drbd_device = type { i32, i32, i32, i32, i32*, i64, i32 }

@USE_DEGR_WFC_T = common dso_local global i32 0, align 4
@RESIZE_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_connected(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca %struct.drbd_peer_device*, align 8
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %2, align 8
  %5 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %5, i32 0, i32 1
  %7 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  store %struct.drbd_device* %7, %struct.drbd_device** %3, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 6
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %14 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %21 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 3
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32* [ %23, %19 ], [ %26, %24 ]
  %29 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %32 = call i32 @drbd_send_sync_param(%struct.drbd_peer_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %37 = call i32 @drbd_send_sizes(%struct.drbd_peer_device* %36, i32 0, i32 0)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %43 = call i32 @drbd_send_uuids(%struct.drbd_peer_device* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %49 = call i32 @drbd_send_current_state(%struct.drbd_peer_device* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @USE_DEGR_WFC_T, align 4
  %52 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %53 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %52, i32 0, i32 2
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @RESIZE_PENDING, align 4
  %56 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %57 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %56, i32 0, i32 2
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %60 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %59, i32 0, i32 1
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %63 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %62, i32 0, i32 0
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* @HZ, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @mod_timer(i32* %63, i64 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drbd_send_sync_param(%struct.drbd_peer_device*) #1

declare dso_local i32 @drbd_send_sizes(%struct.drbd_peer_device*, i32, i32) #1

declare dso_local i32 @drbd_send_uuids(%struct.drbd_peer_device*) #1

declare dso_local i32 @drbd_send_current_state(%struct.drbd_peer_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
