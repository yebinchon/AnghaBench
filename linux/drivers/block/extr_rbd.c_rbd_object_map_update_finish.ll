; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_update_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_update_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32 }
%struct.ceph_osd_request = type { i32, i32 }
%struct.ceph_osd_data = type { i64, i32* }

@cls = common dso_local global i32 0, align 4
@request_data = common dso_local global i32 0, align 4
@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i64 0, align 8
@OBJECT_EXISTS = common dso_local global i8* null, align 8
@OBJECT_EXISTS_CLEAN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, %struct.ceph_osd_request*)* @rbd_object_map_update_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_object_map_update_finish(%struct.rbd_obj_request* %0, %struct.ceph_osd_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_obj_request*, align 8
  %5 = alloca %struct.ceph_osd_request*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca %struct.ceph_osd_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %4, align 8
  store %struct.ceph_osd_request* %1, %struct.ceph_osd_request** %5, align 8
  %14 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %15 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.rbd_device*, %struct.rbd_device** %17, align 8
  store %struct.rbd_device* %18, %struct.rbd_device** %6, align 8
  %19 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %109

27:                                               ; preds = %2
  %28 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %109

33:                                               ; preds = %27
  %34 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i32
  %39 = call i32 @rbd_assert(i32 %38)
  %40 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %5, align 8
  %41 = load i32, i32* @cls, align 4
  %42 = load i32, i32* @request_data, align 4
  %43 = call %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request* %40, i32 1, i32 %41, i32 %42)
  store %struct.ceph_osd_data* %43, %struct.ceph_osd_data** %7, align 8
  %44 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGES, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @rbd_assert(i32 %49)
  %51 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %52 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @page_address(i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = call i64 @ceph_decode_64(i8** %13)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %60 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @rbd_assert(i32 %64)
  %66 = call i64 @ceph_decode_64(i8** %13)
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 1
  %69 = icmp eq i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @rbd_assert(i32 %70)
  %72 = call i8* @ceph_decode_8(i8** %13)
  store i8* %72, i8** %10, align 8
  %73 = call i8* @ceph_decode_8(i8** %13)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %33
  %78 = call i8* @ceph_decode_8(i8** %13)
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %77, %33
  %80 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %81 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i8* @__rbd_object_map_get(%struct.rbd_device* %83, i64 %84)
  store i8* %85, i8** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %79
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** @OBJECT_EXISTS, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** @OBJECT_EXISTS_CLEAN, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %88, %79
  %101 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @__rbd_object_map_set(%struct.rbd_device* %101, i64 %102, i8* %103)
  br label %105

105:                                              ; preds = %100, %96, %92
  %106 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %107 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %32, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i64 @ceph_decode_64(i8**) #1

declare dso_local i8* @ceph_decode_8(i8**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @__rbd_object_map_get(%struct.rbd_device*, i64) #1

declare dso_local i32 @__rbd_object_map_set(%struct.rbd_device*, i64, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
