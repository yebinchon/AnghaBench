; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_zeroout_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_osd_setup_zeroout_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { %struct.rbd_obj_request* }
%struct.rbd_obj_request = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RBD_OBJ_FLAG_COPYUP_ENABLED = common dso_local global i32 0, align 4
@CEPH_OSD_OP_CREATE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_TRUNCATE = common dso_local global i64 0, align 8
@RBD_OBJ_FLAG_DELETION = common dso_local global i32 0, align 4
@CEPH_OSD_OP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @__rbd_osd_setup_zeroout_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rbd_osd_setup_zeroout_ops(%struct.ceph_osd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbd_obj_request*, align 8
  %6 = alloca i64, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %7, i32 0, i32 0
  %9 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %8, align 8
  store %struct.rbd_obj_request* %9, %struct.rbd_obj_request** %5, align 8
  %10 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %11 = call i64 @rbd_obj_is_entire(%struct.rbd_obj_request* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %15 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %20 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @CEPH_OSD_OP_CREATE, align 4
  %30 = call i32 @osd_req_op_init(%struct.ceph_osd_request* %26, i32 %27, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i64, i64* @CEPH_OSD_OP_TRUNCATE, align 8
  store i64 %32, i64* %6, align 8
  br label %45

33:                                               ; preds = %13
  %34 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %35 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RBD_OBJ_FLAG_DELETION, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @rbd_assert(i32 %38)
  %40 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @CEPH_OSD_OP_DELETE, align 4
  %44 = call i32 @osd_req_op_init(%struct.ceph_osd_request* %40, i32 %41, i32 %43, i32 0)
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %33, %31
  br label %49

46:                                               ; preds = %2
  %47 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %48 = call i64 @truncate_or_zero_opcode(%struct.rbd_obj_request* %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %57 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %61 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %53, i32 %54, i64 %55, i32 %59, i32 %63, i32 0, i32 0)
  br label %65

65:                                               ; preds = %52, %49
  ret void
}

declare dso_local i64 @rbd_obj_is_entire(%struct.rbd_obj_request*) #1

declare dso_local i32 @osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @truncate_or_zero_opcode(%struct.rbd_obj_request*) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
