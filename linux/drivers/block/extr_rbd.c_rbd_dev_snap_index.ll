; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_snap_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_snap_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ceph_snap_context* }
%struct.ceph_snap_context = type { i32*, i32 }

@snapid_compare_reverse = common dso_local global i32 0, align 4
@BAD_SNAP_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i32)* @rbd_dev_snap_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_snap_index(%struct.rbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_snap_context*, align 8
  %6 = alloca i32*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  store %struct.ceph_snap_context* %10, %struct.ceph_snap_context** %5, align 8
  %11 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %11, i32 0, i32 0
  %13 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @snapid_compare_reverse, align 4
  %17 = call i32* @bsearch(i32* %4, i32** %12, i32 %15, i32 4, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = ptrtoint i32* %21 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = trunc i64 %29 to i32
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @BAD_SNAP_INDEX, align 4
  br label %33

33:                                               ; preds = %31, %20
  %34 = phi i32 [ %30, %20 ], [ %32, %31 ]
  ret i32 %34
}

declare dso_local i32* @bsearch(i32*, i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
