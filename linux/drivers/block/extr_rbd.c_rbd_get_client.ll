; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_get_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_options = type { i32 }

@client_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get latest osdmap: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rbd_client* (%struct.ceph_options*)* @rbd_get_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rbd_client* @rbd_get_client(%struct.ceph_options* %0) #0 {
  %2 = alloca %struct.ceph_options*, align 8
  %3 = alloca %struct.rbd_client*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_options* %0, %struct.ceph_options** %2, align 8
  %5 = call i32 @mutex_lock(i32* @client_mutex)
  %6 = load %struct.ceph_options*, %struct.ceph_options** %2, align 8
  %7 = call %struct.rbd_client* @rbd_client_find(%struct.ceph_options* %6)
  store %struct.rbd_client* %7, %struct.rbd_client** %3, align 8
  %8 = load %struct.rbd_client*, %struct.rbd_client** %3, align 8
  %9 = icmp ne %struct.rbd_client* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.ceph_options*, %struct.ceph_options** %2, align 8
  %12 = call i32 @ceph_destroy_options(%struct.ceph_options* %11)
  %13 = load %struct.rbd_client*, %struct.rbd_client** %3, align 8
  %14 = getelementptr inbounds %struct.rbd_client, %struct.rbd_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.rbd_client*, %struct.rbd_client** %3, align 8
  %17 = getelementptr inbounds %struct.rbd_client, %struct.rbd_client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ceph_wait_for_latest_osdmap(%struct.TYPE_4__* %15, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %10
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rbd_warn(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.rbd_client*, %struct.rbd_client** %3, align 8
  %30 = call i32 @rbd_put_client(%struct.rbd_client* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.rbd_client* @ERR_PTR(i32 %31)
  store %struct.rbd_client* %32, %struct.rbd_client** %3, align 8
  br label %33

33:                                               ; preds = %26, %10
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.ceph_options*, %struct.ceph_options** %2, align 8
  %36 = call %struct.rbd_client* @rbd_client_create(%struct.ceph_options* %35)
  store %struct.rbd_client* %36, %struct.rbd_client** %3, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = call i32 @mutex_unlock(i32* @client_mutex)
  %39 = load %struct.rbd_client*, %struct.rbd_client** %3, align 8
  ret %struct.rbd_client* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rbd_client* @rbd_client_find(%struct.ceph_options*) #1

declare dso_local i32 @ceph_destroy_options(%struct.ceph_options*) #1

declare dso_local i32 @ceph_wait_for_latest_osdmap(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rbd_warn(i32*, i8*, i32) #1

declare dso_local i32 @rbd_put_client(%struct.rbd_client*) #1

declare dso_local %struct.rbd_client* @ERR_PTR(i32) #1

declare dso_local %struct.rbd_client* @rbd_client_create(%struct.ceph_options*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
