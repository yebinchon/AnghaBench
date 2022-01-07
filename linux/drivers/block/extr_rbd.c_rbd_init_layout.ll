; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_init_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_init_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i8* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@CEPH_NOPOOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_init_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_init_layout(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %3 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %10 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8, %1
  %15 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %16 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %15, i32 0, i32 1
  %17 = call i8* @rbd_obj_bytes(%struct.TYPE_6__* %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %20 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %23 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %14, %8
  %26 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %27 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %31 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %38 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %41 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %40, i32 0, i32 1
  %42 = call i8* @rbd_obj_bytes(%struct.TYPE_6__* %41)
  %43 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %44 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %47 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CEPH_NOPOOL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %25
  %53 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %54 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %63

58:                                               ; preds = %25
  %59 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %60 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i64 [ %57, %52 ], [ %62, %58 ]
  %65 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %66 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i64 %64, i64* %67, align 8
  %68 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %69 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @RCU_INIT_POINTER(i32 %71, i32* null)
  ret void
}

declare dso_local i8* @rbd_obj_bytes(%struct.TYPE_6__*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
