; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i8*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }

@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@CEPH_CLS_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@RBD_LOCK_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_lock(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %7 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ceph_osd_client* %12, %struct.ceph_osd_client** %4, align 8
  %13 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %14 = call i64 @__rbd_is_lock_owner(%struct.rbd_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %16, %1
  %25 = phi i1 [ true, %1 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %30 = call i32 @format_lock_cookie(%struct.rbd_device* %28, i8* %29)
  %31 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %32 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %33 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %32, i32 0, i32 2
  %34 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %35 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %34, i32 0, i32 1
  %36 = load i32, i32* @RBD_LOCK_NAME, align 4
  %37 = load i32, i32* @CEPH_CLS_LOCK_EXCLUSIVE, align 4
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* @RBD_LOCK_TAG, align 4
  %40 = call i32 @ceph_cls_lock(%struct.ceph_osd_client* %31, i32* %33, i32* %35, i32 %36, i32 %37, i8* %38, i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %24
  %46 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %48 = call i32 @__rbd_lock(%struct.rbd_device* %46, i8* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @__rbd_is_lock_owner(%struct.rbd_device*) #1

declare dso_local i32 @format_lock_cookie(%struct.rbd_device*, i8*) #1

declare dso_local i32 @ceph_cls_lock(%struct.ceph_osd_client*, i32*, i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @__rbd_lock(%struct.rbd_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
