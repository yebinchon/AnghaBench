; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_issue_peer_discard_or_zero_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_issue_peer_discard_or_zero_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.drbd_peer_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EE_ZEROOUT = common dso_local global i32 0, align 4
@EE_TRIM = common dso_local global i32 0, align 4
@EE_WAS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.drbd_peer_request*)* @drbd_issue_peer_discard_or_zero_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_issue_peer_discard_or_zero_out(%struct.drbd_device* %0, %struct.drbd_peer_request* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_peer_request*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.drbd_peer_request* %1, %struct.drbd_peer_request** %4, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %6 = call i32 @can_do_reliable_discards(%struct.drbd_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EE_ZEROOUT, align 4
  %10 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %16 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %21 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 9
  %25 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %26 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EE_ZEROOUT, align 4
  %29 = load i32, i32* @EE_TRIM, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = call i64 @drbd_issue_discard_or_zero_out(%struct.drbd_device* %15, i32 %19, i32 %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %14
  %35 = load i32, i32* @EE_WAS_ERROR, align 4
  %36 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %37 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %14
  %41 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %42 = call i32 @drbd_endio_write_sec_final(%struct.drbd_peer_request* %41)
  ret void
}

declare dso_local i32 @can_do_reliable_discards(%struct.drbd_device*) #1

declare dso_local i64 @drbd_issue_discard_or_zero_out(%struct.drbd_device*, i32, i32, i32) #1

declare dso_local i32 @drbd_endio_write_sec_final(%struct.drbd_peer_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
