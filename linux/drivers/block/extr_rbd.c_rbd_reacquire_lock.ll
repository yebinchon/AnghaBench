; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_reacquire_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_reacquire_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }

@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@CEPH_CLS_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@RBD_LOCK_TAG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to update lock cookie: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_reacquire_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_reacquire_lock(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %6 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %7 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.ceph_osd_client* %11, %struct.ceph_osd_client** %3, align 8
  %12 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %13 = call i32 @rbd_quiesce_lock(%struct.rbd_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = call i32 @format_lock_cookie(%struct.rbd_device* %17, i8* %18)
  %20 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %21 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %22 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %21, i32 0, i32 4
  %23 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %24 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %23, i32 0, i32 3
  %25 = load i32, i32* @RBD_LOCK_NAME, align 4
  %26 = load i32, i32* @CEPH_CLS_LOCK_EXCLUSIVE, align 4
  %27 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RBD_LOCK_TAG, align 4
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %32 = call i32 @ceph_cls_set_cookie(%struct.ceph_osd_client* %20, i32* %22, i32* %24, i32 %25, i32 %26, i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @rbd_warn(%struct.rbd_device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %46 = call i32 @__rbd_release_lock(%struct.rbd_device* %45)
  %47 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %48 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %51 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %50, i32 0, i32 0
  %52 = call i32 @queue_delayed_work(i32 %49, i32* %51, i32 0)
  br label %59

53:                                               ; preds = %16
  %54 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %56 = call i32 @__rbd_lock(%struct.rbd_device* %54, i8* %55)
  %57 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %58 = call i32 @wake_lock_waiters(%struct.rbd_device* %57, i32 0)
  br label %59

59:                                               ; preds = %15, %53, %44
  ret void
}

declare dso_local i32 @rbd_quiesce_lock(%struct.rbd_device*) #1

declare dso_local i32 @format_lock_cookie(%struct.rbd_device*, i8*) #1

declare dso_local i32 @ceph_cls_set_cookie(%struct.ceph_osd_client*, i32*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

declare dso_local i32 @__rbd_release_lock(%struct.rbd_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @__rbd_lock(%struct.rbd_device*, i8*) #1

declare dso_local i32 @wake_lock_waiters(%struct.rbd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
