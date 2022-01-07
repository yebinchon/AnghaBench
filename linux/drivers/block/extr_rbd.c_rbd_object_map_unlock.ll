; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }

@oid = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to unlock object map: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_object_map_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_object_map_unlock(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ceph_osd_client* %10, %struct.ceph_osd_client** %3, align 8
  %11 = load i32, i32* @oid, align 4
  %12 = call i32 @CEPH_DEFINE_OID_ONSTACK(i32 %11)
  %13 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %14 = load i32, i32* @CEPH_NOSNAP, align 4
  %15 = call i32 @rbd_object_map_name(%struct.rbd_device* %13, i32 %14, i32* @oid)
  %16 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %17 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 0
  %19 = load i32, i32* @RBD_LOCK_NAME, align 4
  %20 = call i32 @ceph_cls_unlock(%struct.ceph_osd_client* %16, i32* @oid, i32* %18, i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @rbd_warn(%struct.rbd_device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %23, %1
  ret void
}

declare dso_local i32 @CEPH_DEFINE_OID_ONSTACK(i32) #1

declare dso_local i32 @rbd_object_map_name(%struct.rbd_device*, i32, i32*) #1

declare dso_local i32 @ceph_cls_unlock(%struct.ceph_osd_client*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
