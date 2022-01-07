; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_v2_snap_id_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_v2_snap_id_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ceph_snap_context* }
%struct.ceph_snap_context = type { i64, i32* }

@ENOENT = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i8*)* @rbd_v2_snap_id_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_v2_snap_id_by_name(%struct.rbd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ceph_snap_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %11 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %12, align 8
  store %struct.ceph_snap_context* %13, %struct.ceph_snap_context** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %58

25:                                               ; preds = %23
  %26 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @rbd_dev_v2_snap_name(%struct.rbd_device* %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %38
  br label %58

46:                                               ; preds = %25
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @kfree(i8* %53)
  br label %55

55:                                               ; preds = %46, %44
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %14

58:                                               ; preds = %45, %23
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @CEPH_NOSNAP, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local i8* @rbd_dev_v2_snap_name(%struct.rbd_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
