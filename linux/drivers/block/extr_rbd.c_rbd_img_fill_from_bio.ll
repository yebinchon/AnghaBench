; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_fill_from_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_fill_from_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32 }
%struct.bio = type { i32 }
%struct.ceph_file_extent = type { i32, i32 }
%struct.ceph_bio_iter = type { i32, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*, i32, i32, %struct.bio*)* @rbd_img_fill_from_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_img_fill_from_bio(%struct.rbd_img_request* %0, i32 %1, i32 %2, %struct.bio* %3) #0 {
  %5 = alloca %struct.rbd_img_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.ceph_file_extent, align 4
  %10 = alloca %struct.ceph_bio_iter, align 8
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.bio* %3, %struct.bio** %8, align 8
  %11 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %9, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %9, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ceph_bio_iter, %struct.ceph_bio_iter* %10, i32 0, i32 0
  %16 = load %struct.bio*, %struct.bio** %8, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.ceph_bio_iter, %struct.ceph_bio_iter* %10, i32 0, i32 1
  %20 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %20, %struct.bio** %19, align 8
  %21 = load %struct.rbd_img_request*, %struct.rbd_img_request** %5, align 8
  %22 = call i32 @__rbd_img_fill_from_bio(%struct.rbd_img_request* %21, %struct.ceph_file_extent* %9, i32 1, %struct.ceph_bio_iter* %10)
  ret i32 %22
}

declare dso_local i32 @__rbd_img_fill_from_bio(%struct.rbd_img_request*, %struct.ceph_file_extent*, i32, %struct.ceph_bio_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
