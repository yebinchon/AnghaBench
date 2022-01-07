; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_remove_epoch_entry_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_remove_epoch_entry_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32 }
%struct.drbd_peer_request = type { %struct.drbd_interval }
%struct.drbd_interval = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.drbd_peer_request*)* @drbd_remove_epoch_entry_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_remove_epoch_entry_interval(%struct.drbd_device* %0, %struct.drbd_peer_request* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_peer_request*, align 8
  %5 = alloca %struct.drbd_interval*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.drbd_peer_request* %1, %struct.drbd_peer_request** %4, align 8
  %6 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %7 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %6, i32 0, i32 0
  store %struct.drbd_interval* %7, %struct.drbd_interval** %5, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 1
  %10 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %11 = call i32 @drbd_remove_interval(i32* %9, %struct.drbd_interval* %10)
  %12 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %13 = call i32 @drbd_clear_interval(%struct.drbd_interval* %12)
  %14 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %15 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %19, i32 0, i32 0
  %21 = call i32 @wake_up(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @drbd_remove_interval(i32*, %struct.drbd_interval*) #1

declare dso_local i32 @drbd_clear_interval(%struct.drbd_interval*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
