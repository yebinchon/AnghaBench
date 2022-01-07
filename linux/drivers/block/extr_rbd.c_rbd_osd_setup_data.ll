; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_osd_setup_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_osd_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { %struct.rbd_obj_request* }
%struct.rbd_obj_request = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @rbd_osd_setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_osd_setup_data(%struct.ceph_osd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbd_obj_request*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %6, i32 0, i32 0
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %7, align 8
  store %struct.rbd_obj_request* %8, %struct.rbd_obj_request** %5, align 8
  %9 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %10 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %9, i32 0, i32 5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %51 [
    i32 130, label %14
    i32 129, label %24
    i32 128, label %24
  ]

14:                                               ; preds = %2
  %15 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %18 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %17, i32 0, i32 4
  %19 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %20 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @osd_req_op_extent_osd_data_bio(%struct.ceph_osd_request* %15, i32 %16, i32* %18, i32 %22)
  br label %53

24:                                               ; preds = %2, %2
  %25 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %26 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %31 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %29, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @rbd_assert(i32 %35)
  %37 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %38 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %41 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @rbd_assert(i32 %44)
  %46 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %49 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %48, i32 0, i32 0
  %50 = call i32 @osd_req_op_extent_osd_data_bvec_pos(%struct.ceph_osd_request* %46, i32 %47, %struct.TYPE_8__* %49)
  br label %53

51:                                               ; preds = %2
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %24, %14
  ret void
}

declare dso_local i32 @osd_req_op_extent_osd_data_bio(%struct.ceph_osd_request*, i32, i32*, i32) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @osd_req_op_extent_osd_data_bvec_pos(%struct.ceph_osd_request*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
