; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i64, i64, %struct.rbd_device*, i32, i32, %struct.rbd_device*, i32, i32 }

@RBD_WATCH_STATE_UNREGISTERED = common dso_local global i64 0, align 8
@RBD_LOCK_STATE_UNLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_dev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_dev_free(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %3 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RBD_WATCH_STATE_UNREGISTERED, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RBD_LOCK_STATE_UNLOCKED, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 7
  %19 = call i32 @ceph_oid_destroy(i32* %18)
  %20 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %21 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %20, i32 0, i32 6
  %22 = call i32 @ceph_oloc_destroy(i32* %21)
  %23 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %24 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %23, i32 0, i32 5
  %25 = load %struct.rbd_device*, %struct.rbd_device** %24, align 8
  %26 = call i32 @kfree(%struct.rbd_device* %25)
  %27 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rbd_put_client(i32 %29)
  %31 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %32 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rbd_spec_put(i32 %33)
  %35 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %36 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %35, i32 0, i32 2
  %37 = load %struct.rbd_device*, %struct.rbd_device** %36, align 8
  %38 = call i32 @kfree(%struct.rbd_device* %37)
  %39 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %40 = call i32 @kfree(%struct.rbd_device* %39)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_oid_destroy(i32*) #1

declare dso_local i32 @ceph_oloc_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.rbd_device*) #1

declare dso_local i32 @rbd_put_client(i32) #1

declare dso_local i32 @rbd_spec_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
