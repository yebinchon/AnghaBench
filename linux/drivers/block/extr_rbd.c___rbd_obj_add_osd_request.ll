; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_obj_add_osd_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_obj_add_osd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.TYPE_14__, %struct.rbd_obj_request*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.rbd_obj_request = type { %struct.TYPE_13__, i32, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_snap_context = type { i32 }

@RBD_V1_DATA_FORMAT = common dso_local global i8* null, align 8
@RBD_V2_DATA_FORMAT = common dso_local global i8* null, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rbd_osd_req_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_osd_request* (%struct.rbd_obj_request*, %struct.ceph_snap_context*, i32)* @__rbd_obj_add_osd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_osd_request* @__rbd_obj_add_osd_request(%struct.rbd_obj_request* %0, %struct.ceph_snap_context* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca %struct.rbd_obj_request*, align 8
  %6 = alloca %struct.ceph_snap_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rbd_device*, align 8
  %9 = alloca %struct.ceph_osd_client*, align 8
  %10 = alloca %struct.ceph_osd_request*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %5, align 8
  store %struct.ceph_snap_context* %1, %struct.ceph_snap_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %14 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.rbd_device*, %struct.rbd_device** %16, align 8
  store %struct.rbd_device* %17, %struct.rbd_device** %8, align 8
  %18 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %19 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %18, i32 0, i32 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.ceph_osd_client* %23, %struct.ceph_osd_client** %9, align 8
  %24 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %25 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i8*, i8** @RBD_V1_DATA_FORMAT, align 8
  br label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @RBD_V2_DATA_FORMAT, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  store i8* %33, i8** %11, align 8
  %34 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %35 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GFP_NOIO, align 4
  %38 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %34, %struct.ceph_snap_context* %35, i32 %36, i32 0, i32 %37)
  store %struct.ceph_osd_request* %38, %struct.ceph_osd_request** %10, align 8
  %39 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %40 = icmp ne %struct.ceph_osd_request* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.ceph_osd_request* @ERR_PTR(i32 %43)
  store %struct.ceph_osd_request* %44, %struct.ceph_osd_request** %4, align 8
  br label %89

45:                                               ; preds = %32
  %46 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %46, i32 0, i32 4
  %48 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %49 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load i32, i32* @rbd_osd_req_callback, align 4
  %52 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %53 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %55 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %56 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %55, i32 0, i32 2
  store %struct.rbd_obj_request* %54, %struct.rbd_obj_request** %56, align 8
  %57 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %58 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %57, i32 0, i32 1
  %59 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %60 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %59, i32 0, i32 3
  %61 = call i32 @ceph_oloc_copy(%struct.TYPE_14__* %58, i32* %60)
  %62 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %63 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %67 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %70 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %69, i32 0, i32 0
  %71 = load i32, i32* @GFP_NOIO, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %74 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %78 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ceph_oid_aprintf(i32* %70, i32 %71, i8* %72, i32 %76, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %45
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.ceph_osd_request* @ERR_PTR(i32 %85)
  store %struct.ceph_osd_request* %86, %struct.ceph_osd_request** %4, align 8
  br label %89

87:                                               ; preds = %45
  %88 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  store %struct.ceph_osd_request* %88, %struct.ceph_osd_request** %4, align 8
  br label %89

89:                                               ; preds = %87, %84, %41
  %90 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  ret %struct.ceph_osd_request* %90
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, %struct.ceph_snap_context*, i32, i32, i32) #1

declare dso_local %struct.ceph_osd_request* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ceph_oloc_copy(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ceph_oid_aprintf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
