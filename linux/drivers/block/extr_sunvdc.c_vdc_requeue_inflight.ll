; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_requeue_inflight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_requeue_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_3__, %struct.vdc_req_entry* }
%struct.TYPE_3__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64, i64 }
%struct.vdc_req_entry = type { %struct.request* }
%struct.request = type { i32 }
%struct.vio_disk_desc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VIO_DESC_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*)* @vdc_requeue_inflight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_requeue_inflight(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vio_disk_desc*, align 8
  %6 = alloca %struct.vdc_req_entry*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %8 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %9 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %12 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %13 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %11, i64 %12
  store %struct.vio_dring_state* %13, %struct.vio_dring_state** %3, align 8
  %14 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %15 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %67, %1
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state* %24, i64 %25)
  store %struct.vio_disk_desc* %26, %struct.vio_disk_desc** %5, align 8
  %27 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %28 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %27, i32 0, i32 1
  %29 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %29, i64 %30
  store %struct.vdc_req_entry* %31, %struct.vdc_req_entry** %6, align 8
  %32 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %33 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %5, align 8
  %37 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %5, align 8
  %40 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ldc_unmap(i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* @VIO_DESC_FREE, align 4
  %44 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %5, align 8
  %45 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i8* @vio_dring_next(%struct.vio_dring_state* %47, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %52 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %6, align 8
  %54 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %53, i32 0, i32 0
  %55 = load %struct.request*, %struct.request** %54, align 8
  store %struct.request* %55, %struct.request** %7, align 8
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = icmp eq %struct.request* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %23
  %59 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %60 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %5, align 8
  %61 = call i32 @vdc_end_special(%struct.vdc_port* %59, %struct.vio_disk_desc* %60)
  br label %67

62:                                               ; preds = %23
  %63 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %6, align 8
  %64 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %63, i32 0, i32 0
  store %struct.request* null, %struct.request** %64, align 8
  %65 = load %struct.request*, %struct.request** %7, align 8
  %66 = call i32 @blk_mq_requeue_request(%struct.request* %65, i32 0)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i8* @vio_dring_next(%struct.vio_dring_state* %68, i64 %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %4, align 8
  br label %17

72:                                               ; preds = %17
  ret void
}

declare dso_local %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state*, i64) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

declare dso_local i8* @vio_dring_next(%struct.vio_dring_state*, i64) #1

declare dso_local i32 @vdc_end_special(%struct.vdc_port*, %struct.vio_disk_desc*) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
