; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_put_ldev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_put_ldev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@local = common dso_local global i32 0, align 4
@D_DISKLESS = common dso_local global i32 0, align 4
@DESTROY_DISK = common dso_local global i32 0, align 4
@D_FAILED = common dso_local global i32 0, align 4
@GOING_DISKLESS = common dso_local global i32 0, align 4
@GO_DISKLESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*)* @put_ldev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ldev(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %10 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %9, i32 0, i32 2
  %11 = call i32 @atomic_dec_return(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @local, align 4
  %13 = call i32 @__release(i32 %12)
  %14 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @D_ASSERT(%struct.drbd_device* %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @D_DISKLESS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %27 = load i32, i32* @DESTROY_DISK, align 4
  %28 = call i32 @drbd_device_post_work(%struct.drbd_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @D_FAILED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* @GOING_DISKLESS, align 4
  %35 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 1
  %37 = call i32 @test_and_set_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %41 = load i32, i32* @GO_DISKLESS, align 4
  %42 = call i32 @drbd_device_post_work(%struct.drbd_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %46 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %45, i32 0, i32 0
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @__release(i32) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_device_post_work(%struct.drbd_device*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
