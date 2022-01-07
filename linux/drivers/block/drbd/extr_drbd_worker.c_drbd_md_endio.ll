; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_worker.c_drbd_md_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_worker.c_drbd_md_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.drbd_device* }
%struct.drbd_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_md_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.drbd_device*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  store %struct.drbd_device* %6, %struct.drbd_device** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @blk_status_to_errno(i32 %9)
  %11 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %20 = call i32 @put_ldev(%struct.drbd_device* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = call i32 @bio_put(%struct.bio* %22)
  %24 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %25 = call i32 @drbd_md_put_buffer(%struct.drbd_device* %24)
  %26 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %27 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 0
  %31 = call i32 @wake_up(i32* %30)
  ret void
}

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @drbd_md_put_buffer(%struct.drbd_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
