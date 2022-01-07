; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_refresh(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 1
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %13 = call i32 @rbd_dev_header_info(%struct.rbd_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %24 = call i32 @rbd_dev_v2_parent_info(%struct.rbd_device* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %31 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CEPH_NOSNAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %43 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %48

45:                                               ; preds = %29
  %46 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %47 = call i32 @rbd_exists_validate(%struct.rbd_device* %46)
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %48, %27, %16
  %50 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %51 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %50, i32 0, i32 1
  %52 = call i32 @up_write(i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %58 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %64 = call i32 @rbd_dev_update_size(%struct.rbd_device* %63)
  br label %65

65:                                               ; preds = %62, %55, %49
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rbd_dev_header_info(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_parent_info(%struct.rbd_device*) #1

declare dso_local i32 @rbd_exists_validate(%struct.rbd_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @rbd_dev_update_size(%struct.rbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
