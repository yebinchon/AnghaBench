; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_osd_format_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_osd_format_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, i32, i32, %struct.rbd_obj_request* }
%struct.rbd_obj_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @rbd_osd_format_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_osd_format_write(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.rbd_obj_request*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %4 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %4, i32 0, i32 3
  %6 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  store %struct.rbd_obj_request* %6, %struct.rbd_obj_request** %3, align 8
  %7 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %8 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %10, i32 0, i32 1
  %12 = call i32 @ktime_get_real_ts64(i32* %11)
  %13 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %14 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  ret void
}

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
