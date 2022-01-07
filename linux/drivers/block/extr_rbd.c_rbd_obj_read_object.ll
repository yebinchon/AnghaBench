; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_read_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ceph_osd_request = type { i32 }

@CEPH_OSD_OP_READ = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_read_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_read_object(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %6 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %7 = call %struct.ceph_osd_request* @__rbd_obj_add_osd_request(%struct.rbd_obj_request* %6, i32* null, i32 1)
  store %struct.ceph_osd_request* %7, %struct.ceph_osd_request** %4, align 8
  %8 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %9 = call i64 @IS_ERR(%struct.ceph_osd_request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.ceph_osd_request* %12)
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %16 = load i32, i32* @CEPH_OSD_OP_READ, align 4
  %17 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %22 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %15, i32 0, i32 %16, i32 %20, i32 %24, i32 0, i32 0)
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %27 = call i32 @rbd_osd_setup_data(%struct.ceph_osd_request* %26, i32 0)
  %28 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %29 = call i32 @rbd_osd_format_read(%struct.ceph_osd_request* %28)
  %30 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %31 = load i32, i32* @GFP_NOIO, align 4
  %32 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %14
  %38 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %39 = call i32 @rbd_osd_submit(%struct.ceph_osd_request* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %35, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ceph_osd_request* @__rbd_obj_add_osd_request(%struct.rbd_obj_request*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rbd_osd_setup_data(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @rbd_osd_format_read(%struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @rbd_osd_submit(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
