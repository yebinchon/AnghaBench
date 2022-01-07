; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }

@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to unlock header: %d\00", align 1
@RBD_LOCK_STATE_UNLOCKED = common dso_local global i32 0, align 4
@rbd_empty_cid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_unlock(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 6
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ceph_osd_client* %10, %struct.ceph_osd_client** %3, align 8
  %11 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %12 = call i32 @__rbd_is_lock_owner(%struct.rbd_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %16 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i1 [ true, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %27 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 5
  %29 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %30 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %29, i32 0, i32 4
  %31 = load i32, i32* @RBD_LOCK_NAME, align 4
  %32 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @ceph_cls_unlock(%struct.ceph_osd_client* %26, i32* %28, i32* %30, i32 %31, i8* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @rbd_warn(%struct.rbd_device* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %38, %22
  %48 = load i32, i32* @RBD_LOCK_STATE_UNLOCKED, align 4
  %49 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %50 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %52 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %56 = call i32 @rbd_set_owner_cid(%struct.rbd_device* %55, i32* @rbd_empty_cid)
  %57 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %58 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %61 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %60, i32 0, i32 1
  %62 = call i32 @queue_work(i32 %59, i32* %61)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__rbd_is_lock_owner(%struct.rbd_device*) #1

declare dso_local i32 @ceph_cls_unlock(%struct.ceph_osd_client*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

declare dso_local i32 @rbd_set_owner_cid(%struct.rbd_device*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
