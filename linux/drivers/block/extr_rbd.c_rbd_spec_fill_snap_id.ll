; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_fill_snap_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_fill_snap_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.rbd_spec* }
%struct.rbd_spec = type { i64, i32, i64, i64, i64, i64 }

@CEPH_NOPOOL = common dso_local global i64 0, align 8
@RBD_SNAP_HEAD_NAME = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_spec_fill_snap_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_spec_fill_snap_id(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.rbd_spec*, align 8
  %5 = alloca i64, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %6 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %7 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %6, i32 0, i32 0
  %8 = load %struct.rbd_spec*, %struct.rbd_spec** %7, align 8
  store %struct.rbd_spec* %8, %struct.rbd_spec** %4, align 8
  %9 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %10 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CEPH_NOPOOL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %16 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @rbd_assert(i32 %21)
  %23 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %24 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %29 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ false, %19 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @rbd_assert(i32 %34)
  %36 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %37 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rbd_assert(i32 %38)
  %40 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %41 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RBD_SNAP_HEAD_NAME, align 4
  %44 = call i64 @strcmp(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %32
  %47 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %48 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %49 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @rbd_snap_id_by_name(%struct.rbd_device* %47, i32 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @CEPH_NOSNAP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %46
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %61 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %66

62:                                               ; preds = %32
  %63 = load i64, i64* @CEPH_NOSNAP, align 8
  %64 = load %struct.rbd_spec*, %struct.rbd_spec** %4, align 8
  %65 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @rbd_snap_id_by_name(%struct.rbd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
