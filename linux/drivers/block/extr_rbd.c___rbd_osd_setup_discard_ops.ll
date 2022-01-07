; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_discard_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_discard_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { %struct.rbd_obj_request* }
%struct.rbd_obj_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RBD_OBJ_FLAG_DELETION = common dso_local global i32 0, align 4
@CEPH_OSD_OP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @__rbd_osd_setup_discard_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rbd_osd_setup_discard_ops(%struct.ceph_osd_request* %0, i32 %1) #0 {
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
  %10 = call i64 @rbd_obj_is_entire(%struct.rbd_obj_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %14 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %19 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RBD_OBJ_FLAG_DELETION, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @rbd_assert(i32 %22)
  %24 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CEPH_OSD_OP_DELETE, align 4
  %27 = call i32 @osd_req_op_init(%struct.ceph_osd_request* %24, i32 %25, i32 %26, i32 0)
  br label %42

28:                                               ; preds = %12, %2
  %29 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %32 = call i32 @truncate_or_zero_opcode(%struct.rbd_obj_request* %31)
  %33 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %34 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %38 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %29, i32 %30, i32 %32, i32 %36, i32 %40, i32 0, i32 0)
  br label %42

42:                                               ; preds = %28, %17
  ret void
}

declare dso_local i64 @rbd_obj_is_entire(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @truncate_or_zero_opcode(%struct.rbd_obj_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
