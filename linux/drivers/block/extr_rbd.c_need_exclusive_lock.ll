; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_need_exclusive_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_need_exclusive_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, %struct.rbd_device* }
%struct.rbd_device = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RBD_FEATURE_EXCLUSIVE_LOCK = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@IMG_REQ_CHILD = common dso_local global i32 0, align 4
@RBD_FEATURE_OBJECT_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*)* @need_exclusive_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_exclusive_lock(%struct.rbd_img_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_img_request*, align 8
  %4 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %3, align 8
  %5 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %6 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %5, i32 0, i32 1
  %7 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  store %struct.rbd_device* %7, %struct.rbd_device** %4, align 8
  %8 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RBD_FEATURE_EXCLUSIVE_LOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CEPH_NOSNAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load i32, i32* @IMG_REQ_CHILD, align 4
  %27 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %28 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %27, i32 0, i32 0
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rbd_assert(i32 %32)
  %34 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %35 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %25
  %41 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %42 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RBD_FEATURE_OBJECT_MAP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %25
  store i32 1, i32* %2, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %51 = call i32 @rbd_img_is_write(%struct.rbd_img_request* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %48, %24, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rbd_img_is_write(%struct.rbd_img_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
