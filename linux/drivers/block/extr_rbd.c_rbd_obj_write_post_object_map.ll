; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_write_post_object_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_write_post_object_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rbd_device* }
%struct.rbd_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OBJECT_PENDING = common dso_local global i32 0, align 4
@RBD_FEATURE_OBJECT_MAP = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_DELETION = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@OBJECT_NONEXISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_write_post_object_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_write_post_object_map(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %6 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %7 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.rbd_device*, %struct.rbd_device** %9, align 8
  store %struct.rbd_device* %10, %struct.rbd_device** %4, align 8
  %11 = load i32, i32* @OBJECT_PENDING, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %13 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RBD_FEATURE_OBJECT_MAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %22 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RBD_OBJ_FLAG_DELETION, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %30 = load i32, i32* @CEPH_NOSNAP, align 4
  %31 = load i32, i32* @OBJECT_NONEXISTENT, align 4
  %32 = call i32 @rbd_object_map_update(%struct.rbd_obj_request* %29, i32 %30, i32 %31, i32* %5)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %27, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rbd_object_map_update(%struct.rbd_obj_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
