; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_complete_master_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_complete_master_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.bio_and_error = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complete_master_bio(%struct.drbd_device* %0, %struct.bio_and_error* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.bio_and_error*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.bio_and_error* %1, %struct.bio_and_error** %4, align 8
  %5 = load %struct.bio_and_error*, %struct.bio_and_error** %4, align 8
  %6 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @errno_to_blk_status(i32 %7)
  %9 = load %struct.bio_and_error*, %struct.bio_and_error** %4, align 8
  %10 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.bio_and_error*, %struct.bio_and_error** %4, align 8
  %14 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @bio_endio(%struct.TYPE_2__* %15)
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = call i32 @dec_ap_bio(%struct.drbd_device* %17)
  ret void
}

declare dso_local i32 @errno_to_blk_status(i32) #1

declare dso_local i32 @bio_endio(%struct.TYPE_2__*) #1

declare dso_local i32 @dec_ap_bio(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
