; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_object_id = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@RBD_OBJECT_MAP_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s%s.%016llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*, i64, %struct.ceph_object_id*)* @rbd_object_map_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_object_map_name(%struct.rbd_device* %0, i64 %1, %struct.ceph_object_id* %2) #0 {
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ceph_object_id*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ceph_object_id* %2, %struct.ceph_object_id** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @CEPH_NOSNAP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.ceph_object_id*, %struct.ceph_object_id** %6, align 8
  %12 = load i32, i32* @RBD_OBJECT_MAP_PREFIX, align 4
  %13 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.ceph_object_id*, i8*, i32, i32, ...) @ceph_oid_printf(%struct.ceph_object_id* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.ceph_object_id*, %struct.ceph_object_id** %6, align 8
  %21 = load i32, i32* @RBD_OBJECT_MAP_PREFIX, align 4
  %22 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %23 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (%struct.ceph_object_id*, i8*, i32, i32, ...) @ceph_oid_printf(%struct.ceph_object_id* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @ceph_oid_printf(%struct.ceph_object_id*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
