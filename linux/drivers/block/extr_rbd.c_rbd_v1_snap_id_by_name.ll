; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_v1_snap_id_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_v1_snap_id_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.ceph_snap_context* }
%struct.ceph_snap_context = type { i64, i32* }

@CEPH_NOSNAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i8*)* @rbd_v1_snap_id_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_v1_snap_id_by_name(%struct.rbd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_snap_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %10 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %11, align 8
  store %struct.ceph_snap_context* %12, %struct.ceph_snap_context** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %20 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %37, 1
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* @CEPH_NOSNAP, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
