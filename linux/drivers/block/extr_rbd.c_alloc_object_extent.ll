; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_alloc_object_extent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_alloc_object_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_extent = type { i32 }
%struct.rbd_img_request = type { i32 }
%struct.rbd_obj_request = type { %struct.ceph_object_extent }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_object_extent* (i8*)* @alloc_object_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_object_extent* @alloc_object_extent(i8* %0) #0 {
  %2 = alloca %struct.ceph_object_extent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rbd_img_request*, align 8
  %5 = alloca %struct.rbd_obj_request*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rbd_img_request*
  store %struct.rbd_img_request* %7, %struct.rbd_img_request** %4, align 8
  %8 = call %struct.rbd_obj_request* (...) @rbd_obj_request_create()
  store %struct.rbd_obj_request* %8, %struct.rbd_obj_request** %5, align 8
  %9 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %10 = icmp ne %struct.rbd_obj_request* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.ceph_object_extent* null, %struct.ceph_object_extent** %2, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %14 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %15 = call i32 @rbd_img_obj_request_add(%struct.rbd_img_request* %13, %struct.rbd_obj_request* %14)
  %16 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %17 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %16, i32 0, i32 0
  store %struct.ceph_object_extent* %17, %struct.ceph_object_extent** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.ceph_object_extent*, %struct.ceph_object_extent** %2, align 8
  ret %struct.ceph_object_extent* %19
}

declare dso_local %struct.rbd_obj_request* @rbd_obj_request_create(...) #1

declare dso_local i32 @rbd_img_obj_request_add(%struct.rbd_img_request*, %struct.rbd_obj_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
