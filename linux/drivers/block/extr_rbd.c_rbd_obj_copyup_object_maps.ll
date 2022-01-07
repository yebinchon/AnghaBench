; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_object_maps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_object_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ceph_snap_context*, %struct.rbd_device* }
%struct.ceph_snap_context = type { i32, i32* }
%struct.rbd_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@RBD_FEATURE_OBJECT_MAP = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_COPYUP_ZEROS = common dso_local global i32 0, align 4
@RBD_FEATURE_FAST_DIFF = common dso_local global i32 0, align 4
@OBJECT_EXISTS_CLEAN = common dso_local global i32 0, align 4
@OBJECT_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_obj_request*)* @rbd_obj_copyup_object_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_obj_copyup_object_maps(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca %struct.rbd_obj_request*, align 8
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_snap_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %2, align 8
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %9 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.rbd_device*, %struct.rbd_device** %11, align 8
  store %struct.rbd_device* %12, %struct.rbd_device** %3, align 8
  %13 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %14 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %16, align 8
  store %struct.ceph_snap_context* %17, %struct.ceph_snap_context** %4, align 8
  %18 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %19 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %25 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %23, %1
  %31 = phi i1 [ false, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @rbd_assert(i32 %32)
  %34 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %35 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RBD_FEATURE_OBJECT_MAP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %108

42:                                               ; preds = %30
  %43 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %44 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ZEROS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %108

50:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %105, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %4, align 8
  %54 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %51
  %58 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %59 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RBD_FEATURE_FAST_DIFF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %4, align 8
  %69 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @OBJECT_EXISTS_CLEAN, align 4
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %65, %57
  %75 = load i32, i32* @OBJECT_EXISTS, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %78 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %4, align 8
  %79 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @rbd_object_map_update(%struct.rbd_obj_request* %77, i32 %84, i32 %85, i32* null)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %92 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %108

94:                                               ; preds = %76
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @rbd_assert(i32 %98)
  %100 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %101 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %51

108:                                              ; preds = %41, %49, %89, %51
  ret void
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_object_map_update(%struct.rbd_obj_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
