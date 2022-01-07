; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_read_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_read_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_osd_request = type { i32, i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@CEPH_OSD_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, %struct.ceph_object_id*, %struct.ceph_object_locator*, i8*, i32)* @rbd_obj_read_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_read_sync(%struct.rbd_device* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rbd_device*, align 8
  %8 = alloca %struct.ceph_object_id*, align 8
  %9 = alloca %struct.ceph_object_locator*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_osd_client*, align 8
  %13 = alloca %struct.ceph_osd_request*, align 8
  %14 = alloca %struct.page**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %7, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %8, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.ceph_osd_client* %22, %struct.ceph_osd_client** %12, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @calc_pages_for(i32 0, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %25, i32* null, i32 1, i32 0, i32 %26)
  store %struct.ceph_osd_request* %27, %struct.ceph_osd_request** %13, align 8
  %28 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %29 = icmp ne %struct.ceph_osd_request* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %88

33:                                               ; preds = %5
  %34 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %34, i32 0, i32 2
  %36 = load %struct.ceph_object_id*, %struct.ceph_object_id** %8, align 8
  %37 = call i32 @ceph_oid_copy(i32* %35, %struct.ceph_object_id* %36)
  %38 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %38, i32 0, i32 1
  %40 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %9, align 8
  %41 = call i32 @ceph_oloc_copy(i32* %39, %struct.ceph_object_locator* %40)
  %42 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %43 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %44 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.page** @ceph_alloc_page_vector(i32 %45, i32 %46)
  store %struct.page** %47, %struct.page*** %14, align 8
  %48 = load %struct.page**, %struct.page*** %14, align 8
  %49 = call i64 @IS_ERR(%struct.page** %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load %struct.page**, %struct.page*** %14, align 8
  %53 = call i32 @PTR_ERR(%struct.page** %52)
  store i32 %53, i32* %16, align 4
  br label %84

54:                                               ; preds = %33
  %55 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %56 = load i32, i32* @CEPH_OSD_OP_READ, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %55, i32 0, i32 %56, i32 0, i32 %57, i32 0, i32 0)
  %59 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %60 = load %struct.page**, %struct.page*** %14, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request* %59, i32 0, %struct.page** %60, i32 %61, i32 0, i32 0, i32 1)
  %63 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %63, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %84

69:                                               ; preds = %54
  %70 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %71 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %72 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %70, %struct.ceph_osd_request* %71, i32 0)
  %73 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %12, align 8
  %74 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %75 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %73, %struct.ceph_osd_request* %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.page**, %struct.page*** %14, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @ceph_copy_from_page_vector(%struct.page** %79, i8* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %78, %69
  br label %84

84:                                               ; preds = %83, %68, %51
  %85 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %13, align 8
  %86 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %30
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @calc_pages_for(i32, i32) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_copy_from_page_vector(%struct.page**, i8*, i32, i32) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
