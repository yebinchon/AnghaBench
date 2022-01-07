; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_request_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_request_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, i32, i32, i32, i32, %struct.ceph_snap_context*, i32, %struct.rbd_device* }
%struct.rbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_snap_context = type { i32 }

@rbd_img_request_cache = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rbd_img_request* (%struct.rbd_device*, i32, %struct.ceph_snap_context*)* @rbd_img_request_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rbd_img_request* @rbd_img_request_create(%struct.rbd_device* %0, i32 %1, %struct.ceph_snap_context* %2) #0 {
  %4 = alloca %struct.rbd_img_request*, align 8
  %5 = alloca %struct.rbd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_snap_context*, align 8
  %8 = alloca %struct.rbd_img_request*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_snap_context* %2, %struct.ceph_snap_context** %7, align 8
  %9 = load i32, i32* @rbd_img_request_cache, align 4
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.rbd_img_request* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.rbd_img_request* %11, %struct.rbd_img_request** %8, align 8
  %12 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %13 = icmp ne %struct.rbd_img_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.rbd_img_request* null, %struct.rbd_img_request** %4, align 8
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %17 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %18 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %17, i32 0, i32 7
  store %struct.rbd_device* %16, %struct.rbd_device** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %21 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %23 = call i32 @rbd_img_is_write(%struct.rbd_img_request* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %27 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %32 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  br label %37

33:                                               ; preds = %15
  %34 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %35 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %36 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %35, i32 0, i32 5
  store %struct.ceph_snap_context* %34, %struct.ceph_snap_context** %36, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %39 = call i64 @rbd_dev_parent_get(%struct.rbd_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %43 = call i32 @img_request_layered_set(%struct.rbd_img_request* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %46 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %45, i32 0, i32 4
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %49 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %48, i32 0, i32 3
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %52 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %51, i32 0, i32 2
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  %55 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %54, i32 0, i32 1
  %56 = call i32 @kref_init(i32* %55)
  %57 = load %struct.rbd_img_request*, %struct.rbd_img_request** %8, align 8
  store %struct.rbd_img_request* %57, %struct.rbd_img_request** %4, align 8
  br label %58

58:                                               ; preds = %44, %14
  %59 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  ret %struct.rbd_img_request* %59
}

declare dso_local %struct.rbd_img_request* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @rbd_img_is_write(%struct.rbd_img_request*) #1

declare dso_local i64 @rbd_dev_parent_get(%struct.rbd_device*) #1

declare dso_local i32 @img_request_layered_set(%struct.rbd_img_request*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
