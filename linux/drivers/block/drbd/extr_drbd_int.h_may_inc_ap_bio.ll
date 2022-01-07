; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_may_inc_ap_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_may_inc_ap_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32 }

@BITMAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*)* @may_inc_ap_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_inc_ap_bio(%struct.drbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %6 = call i32 @drbd_get_max_buffers(%struct.drbd_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %8 = call i64 @drbd_suspended(%struct.drbd_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 2
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %37

17:                                               ; preds = %11
  %18 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %19 = call i32 @drbd_state_is_stable(%struct.drbd_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %24 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @BITMAP_IO, align 4
  %31 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %32 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %28, %21, %16, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @drbd_get_max_buffers(%struct.drbd_device*) #1

declare dso_local i64 @drbd_suspended(%struct.drbd_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @drbd_state_is_stable(%struct.drbd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
