; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_bm_init(%struct.drbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_bitmap*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 0
  %7 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %6, align 8
  store %struct.drbd_bitmap* %7, %struct.drbd_bitmap** %4, align 8
  %8 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %9 = icmp ne %struct.drbd_bitmap* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.drbd_bitmap* @kzalloc(i32 12, i32 %12)
  store %struct.drbd_bitmap* %13, %struct.drbd_bitmap** %4, align 8
  %14 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %15 = icmp ne %struct.drbd_bitmap* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %21 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %24 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %27 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %26, i32 0, i32 0
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %30 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %31 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %30, i32 0, i32 0
  store %struct.drbd_bitmap* %29, %struct.drbd_bitmap** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.drbd_bitmap* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
