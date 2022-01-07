; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_osd_request = type { i32, i32, i32, i32, %struct.rbd_obj_request*, i32, i32 }

@CEPH_NOSNAP = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rbd_object_map_callback = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@CEPH_CLS_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i32, i32, i32*)* @rbd_object_map_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_object_map_update(%struct.rbd_obj_request* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rbd_obj_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rbd_device*, align 8
  %11 = alloca %struct.ceph_osd_client*, align 8
  %12 = alloca %struct.ceph_osd_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %6, align 8
  %17 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.rbd_device*, %struct.rbd_device** %19, align 8
  store %struct.rbd_device* %20, %struct.rbd_device** %10, align 8
  %21 = load %struct.rbd_device*, %struct.rbd_device** %10, align 8
  %22 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.ceph_osd_client* %26, %struct.ceph_osd_client** %11, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CEPH_NOSNAP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %4
  %31 = load %struct.rbd_device*, %struct.rbd_device** %10, align 8
  %32 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %6, align 8
  %33 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @update_needed(%struct.rbd_device* %31, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %122

40:                                               ; preds = %30
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %4
  %44 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %44, i32* null, i32 %45, i32 0, i32 %46)
  store %struct.ceph_osd_request* %47, %struct.ceph_osd_request** %12, align 8
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %49 = icmp ne %struct.ceph_osd_request* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %122

53:                                               ; preds = %43
  %54 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %55 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %54, i32 0, i32 6
  %56 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %6, align 8
  %57 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %56, i32 0, i32 1
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load i32, i32* @rbd_object_map_callback, align 4
  %60 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %6, align 8
  %63 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %64 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %63, i32 0, i32 4
  store %struct.rbd_obj_request* %62, %struct.rbd_obj_request** %64, align 8
  %65 = load %struct.rbd_device*, %struct.rbd_device** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %68 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %67, i32 0, i32 3
  %69 = call i32 @rbd_object_map_name(%struct.rbd_device* %65, i32 %66, i32* %68)
  %70 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %71 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %70, i32 0, i32 2
  %72 = load %struct.rbd_device*, %struct.rbd_device** %10, align 8
  %73 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %72, i32 0, i32 0
  %74 = call i32 @ceph_oloc_copy(i32* %71, i32* %73)
  %75 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %76 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %77 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %79 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %78, i32 0, i32 0
  %80 = call i32 @ktime_get_real_ts64(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @CEPH_NOSNAP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %53
  %85 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* @RBD_LOCK_NAME, align 4
  %89 = load i32, i32* @CEPH_CLS_LOCK_EXCLUSIVE, align 4
  %90 = call i32 @ceph_cls_assert_locked(%struct.ceph_osd_request* %85, i32 %86, i32 %88, i32 %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %5, align 4
  br label %122

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %53
  %97 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %6, align 8
  %100 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @rbd_cls_object_map_update(%struct.ceph_osd_request* %97, i32 %98, i32 %102, i32 %103, i32* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %5, align 4
  br label %122

110:                                              ; preds = %96
  %111 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %112 = load i32, i32* @GFP_NOIO, align 4
  %113 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %5, align 4
  br label %122

118:                                              ; preds = %110
  %119 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %11, align 8
  %120 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %12, align 8
  %121 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %119, %struct.ceph_osd_request* %120, i32 0)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %116, %108, %93, %50, %39
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @update_needed(%struct.rbd_device*, i32, i32) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, i32*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rbd_object_map_name(%struct.rbd_device*, i32, i32*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, i32*) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @ceph_cls_assert_locked(%struct.ceph_osd_request*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @rbd_cls_object_map_update(%struct.ceph_osd_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
