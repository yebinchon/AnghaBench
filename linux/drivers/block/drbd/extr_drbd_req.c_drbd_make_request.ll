; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@BLK_QC_T_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.drbd_device*
  store %struct.drbd_device* %10, %struct.drbd_device** %5, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = call i32 @blk_queue_split(%struct.request_queue* %11, %struct.bio** %4)
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_ALIGNED(i32 %18, i32 512)
  %20 = call i32 @D_ASSERT(%struct.drbd_device* %14, i32 %19)
  %21 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %22 = call i32 @inc_ap_bio(%struct.drbd_device* %21)
  %23 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @__drbd_make_request(%struct.drbd_device* %23, %struct.bio* %24, i64 %25)
  %27 = load i32, i32* @BLK_QC_T_NONE, align 4
  ret i32 %27
}

declare dso_local i32 @blk_queue_split(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @inc_ap_bio(%struct.drbd_device*) #1

declare dso_local i32 @__drbd_make_request(%struct.drbd_device*, %struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
