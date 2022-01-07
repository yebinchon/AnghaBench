; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_get_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rbd_client_id = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rbd_device*)* @rbd_get_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rbd_get_cid(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_client_id, align 4
  %3 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %4 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %5 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ceph_client_gid(i32 %11)
  %13 = getelementptr inbounds %struct.rbd_client_id, %struct.rbd_client_id* %2, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %15 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rbd_client_id, %struct.rbd_client_id* %2, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %19 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = bitcast %struct.rbd_client_id* %2 to i64*
  %22 = load i64, i64* %21, align 4
  ret i64 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ceph_client_gid(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
