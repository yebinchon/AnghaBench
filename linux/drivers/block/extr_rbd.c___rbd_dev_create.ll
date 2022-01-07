; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.rbd_spec*, %struct.rbd_client*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rbd_client = type { i32 }
%struct.rbd_spec = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_NOPOOL = common dso_local global i32 0, align 4
@RBD_WATCH_STATE_UNREGISTERED = common dso_local global i32 0, align 4
@rbd_reregister_watch = common dso_local global i32 0, align 4
@RBD_LOCK_STATE_UNLOCKED = common dso_local global i32 0, align 4
@rbd_notify_acquired_lock = common dso_local global i32 0, align 4
@rbd_notify_released_lock = common dso_local global i32 0, align 4
@rbd_acquire_lock = common dso_local global i32 0, align 4
@rbd_release_lock_work = common dso_local global i32 0, align 4
@rbd_bus_type = common dso_local global i32 0, align 4
@rbd_device_type = common dso_local global i32 0, align 4
@rbd_root_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rbd_device* (%struct.rbd_client*, %struct.rbd_spec*)* @__rbd_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rbd_device* @__rbd_dev_create(%struct.rbd_client* %0, %struct.rbd_spec* %1) #0 {
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.rbd_client*, align 8
  %5 = alloca %struct.rbd_spec*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_client* %0, %struct.rbd_client** %4, align 8
  store %struct.rbd_spec* %1, %struct.rbd_spec** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rbd_device* @kzalloc(i32 128, i32 %7)
  store %struct.rbd_device* %8, %struct.rbd_device** %6, align 8
  %9 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %10 = icmp ne %struct.rbd_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.rbd_device* null, %struct.rbd_device** %3, align 8
  br label %129

12:                                               ; preds = %2
  %13 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 23
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %17 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %16, i32 0, i32 22
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %20 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %19, i32 0, i32 21
  %21 = call i32 @init_rwsem(i32* %20)
  %22 = load i32, i32* @CEPH_NOPOOL, align 4
  %23 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %24 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %23, i32 0, i32 20
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %27 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %26, i32 0, i32 19
  %28 = call i32 @ceph_oid_init(i32* %27)
  %29 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %30 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %33 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %32, i32 0, i32 18
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %36 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %12
  %40 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %41 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %49 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %52 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strlen(i32* %53)
  %55 = call i32 @ceph_find_or_create_string(i32* %50, i32 %54)
  %56 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %57 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %56, i32 0, i32 18
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %39, %12
  %60 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %61 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %60, i32 0, i32 17
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load i32, i32* @RBD_WATCH_STATE_UNREGISTERED, align 4
  %64 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %65 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %67 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %66, i32 0, i32 15
  %68 = load i32, i32* @rbd_reregister_watch, align 4
  %69 = call i32 @INIT_DELAYED_WORK(i32* %67, i32 %68)
  %70 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %71 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %70, i32 0, i32 14
  %72 = call i32 @init_rwsem(i32* %71)
  %73 = load i32, i32* @RBD_LOCK_STATE_UNLOCKED, align 4
  %74 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %75 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %77 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %76, i32 0, i32 12
  %78 = load i32, i32* @rbd_notify_acquired_lock, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %81 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %80, i32 0, i32 11
  %82 = load i32, i32* @rbd_notify_released_lock, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %85 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %84, i32 0, i32 10
  %86 = load i32, i32* @rbd_acquire_lock, align 4
  %87 = call i32 @INIT_DELAYED_WORK(i32* %85, i32 %86)
  %88 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %89 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %88, i32 0, i32 9
  %90 = load i32, i32* @rbd_release_lock_work, align 4
  %91 = call i32 @INIT_WORK(i32* %89, i32 %90)
  %92 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %93 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %92, i32 0, i32 8
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %96 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %95, i32 0, i32 7
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %99 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %98, i32 0, i32 6
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %102 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %101, i32 0, i32 5
  %103 = call i32 @init_completion(i32* %102)
  %104 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %105 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %104, i32 0, i32 4
  %106 = call i32 @init_completion(i32* %105)
  %107 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %108 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %107, i32 0, i32 3
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %111 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32* @rbd_bus_type, i32** %112, align 8
  %113 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %114 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32* @rbd_device_type, i32** %115, align 8
  %116 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %117 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32* @rbd_root_dev, i32** %118, align 8
  %119 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %120 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %119, i32 0, i32 2
  %121 = call i32 @device_initialize(%struct.TYPE_6__* %120)
  %122 = load %struct.rbd_client*, %struct.rbd_client** %4, align 8
  %123 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %124 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %123, i32 0, i32 1
  store %struct.rbd_client* %122, %struct.rbd_client** %124, align 8
  %125 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %126 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %127 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %126, i32 0, i32 0
  store %struct.rbd_spec* %125, %struct.rbd_spec** %127, align 8
  %128 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  store %struct.rbd_device* %128, %struct.rbd_device** %3, align 8
  br label %129

129:                                              ; preds = %59, %11
  %130 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  ret %struct.rbd_device* %130
}

declare dso_local %struct.rbd_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @ceph_oid_init(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_find_or_create_string(i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
