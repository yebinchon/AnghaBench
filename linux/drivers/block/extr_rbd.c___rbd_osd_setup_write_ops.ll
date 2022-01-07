; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_write_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_write_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { %struct.rbd_obj_request* }
%struct.rbd_obj_request = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.rbd_device* }
%struct.rbd_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RBD_OBJ_FLAG_MAY_EXIST = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITEFULL = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @__rbd_osd_setup_write_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rbd_osd_setup_write_ops(%struct.ceph_osd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbd_obj_request*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %8, i32 0, i32 0
  %10 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %9, align 8
  store %struct.rbd_obj_request* %10, %struct.rbd_obj_request** %5, align 8
  %11 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %12 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.rbd_device*, %struct.rbd_device** %14, align 8
  store %struct.rbd_device* %15, %struct.rbd_device** %6, align 8
  %16 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %17 = call i32 @use_object_map(%struct.rbd_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %21 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RBD_OBJ_FLAG_MAY_EXIST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %31 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %35 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @osd_req_op_alloc_hint_init(%struct.ceph_osd_request* %27, i32 %28, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %26, %19
  %40 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %41 = call i64 @rbd_obj_is_entire(%struct.rbd_obj_request* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @CEPH_OSD_OP_WRITEFULL, align 4
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @CEPH_OSD_OP_WRITE, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %52 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %56 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %48, i32 %49, i32 %50, i32 %54, i32 %58, i32 0, i32 0)
  %60 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @rbd_osd_setup_data(%struct.ceph_osd_request* %60, i32 %61)
  ret void
}

declare dso_local i32 @use_object_map(%struct.rbd_device*) #1

declare dso_local i32 @osd_req_op_alloc_hint_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i64 @rbd_obj_is_entire(%struct.rbd_obj_request*) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rbd_osd_setup_data(%struct.ceph_osd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
