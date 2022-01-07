; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_wait_until_done_or_force_detached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_wait_until_done_or_force_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32 }
%struct.drbd_backing_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@FORCE_DETACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"meta-data IO operation timed out\0A\00", align 1
@DRBD_FORCE_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_until_done_or_force_detached(%struct.drbd_device* %0, %struct.drbd_backing_dev* %1, i32* %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_backing_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.drbd_backing_dev* %1, %struct.drbd_backing_dev** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %5, align 8
  %10 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @rcu_dereference(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = mul nsw i64 %16, %17
  %19 = sdiv i64 %18, 10
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @FORCE_DETACH, align 4
  %33 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %34 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %31, %24
  %38 = phi i1 [ true, %24 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @wait_event_timeout(i32 %27, i32 %39, i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %46 = call i32 @drbd_err(%struct.drbd_device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %48 = load i32, i32* @DRBD_FORCE_DETACH, align 4
  %49 = call i32 @drbd_chk_io_error(%struct.drbd_device* %47, i32 1, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @drbd_chk_io_error(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
