; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_end_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_end_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_3__, %struct.vdc_req_entry* }
%struct.TYPE_3__ = type { i32 }
%struct.vdc_req_entry = type { %struct.request* }
%struct.request = type { i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_disk_desc = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@VIO_DESC_DONE = common dso_local global i64 0, align 8
@VIO_DESC_FREE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*, %struct.vio_dring_state*, i32)* @vdc_end_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_end_one(%struct.vdc_port* %0, %struct.vio_dring_state* %1, i32 %2) #0 {
  %4 = alloca %struct.vdc_port*, align 8
  %5 = alloca %struct.vio_dring_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_disk_desc*, align 8
  %8 = alloca %struct.vdc_req_entry*, align 8
  %9 = alloca %struct.request*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %4, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state* %10, i32 %11)
  store %struct.vio_disk_desc* %12, %struct.vio_disk_desc** %7, align 8
  %13 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %14 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %13, i32 0, i32 1
  %15 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %15, i64 %17
  store %struct.vdc_req_entry* %18, %struct.vdc_req_entry** %8, align 8
  %19 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %20 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIO_DESC_DONE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %75

29:                                               ; preds = %3
  %30 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %31 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %35 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %38 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ldc_unmap(i32 %33, i32 %36, i32 %39)
  %41 = load i64, i64* @VIO_DESC_FREE, align 8
  %42 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %43 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @vio_dring_next(%struct.vio_dring_state* %45, i32 %46)
  %48 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %49 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %8, align 8
  %51 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %50, i32 0, i32 0
  %52 = load %struct.request*, %struct.request** %51, align 8
  store %struct.request* %52, %struct.request** %9, align 8
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = icmp eq %struct.request* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %57 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %58 = call i32 @vdc_end_special(%struct.vdc_port* %56, %struct.vio_disk_desc* %57)
  br label %75

59:                                               ; preds = %29
  %60 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %8, align 8
  %61 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %60, i32 0, i32 0
  store %struct.request* null, %struct.request** %61, align 8
  %62 = load %struct.request*, %struct.request** %9, align 8
  %63 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %64 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = call i32 @blk_mq_end_request(%struct.request* %62, i32 %71)
  %73 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %74 = call i32 @vdc_blk_queue_start(%struct.vdc_port* %73)
  br label %75

75:                                               ; preds = %70, %55, %28
  ret void
}

declare dso_local %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

declare dso_local i32 @vio_dring_next(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @vdc_end_special(%struct.vdc_port*, %struct.vio_disk_desc*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @vdc_blk_queue_start(%struct.vdc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
