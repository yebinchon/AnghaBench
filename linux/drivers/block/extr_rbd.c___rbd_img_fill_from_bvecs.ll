; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_img_fill_from_bvecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_img_fill_from_bvecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32 }
%struct.ceph_file_extent = type { i32 }
%struct.ceph_bvec_iter = type { i32 }
%struct.rbd_img_fill_ctx = type { i32, i32, i32, %union.rbd_img_fill_iter*, i32 }
%union.rbd_img_fill_iter = type { i32 }

@copy_bvecs = common dso_local global i32 0, align 4
@count_bvecs = common dso_local global i32 0, align 4
@set_bvec_pos = common dso_local global i32 0, align 4
@OBJ_REQUEST_BVECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*, %struct.ceph_file_extent*, i32, %struct.ceph_bvec_iter*)* @__rbd_img_fill_from_bvecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rbd_img_fill_from_bvecs(%struct.rbd_img_request* %0, %struct.ceph_file_extent* %1, i32 %2, %struct.ceph_bvec_iter* %3) #0 {
  %5 = alloca %struct.rbd_img_request*, align 8
  %6 = alloca %struct.ceph_file_extent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_bvec_iter*, align 8
  %9 = alloca %struct.rbd_img_fill_ctx, align 8
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %5, align 8
  store %struct.ceph_file_extent* %1, %struct.ceph_file_extent** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ceph_bvec_iter* %3, %struct.ceph_bvec_iter** %8, align 8
  %10 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* @copy_bvecs, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %9, i32 0, i32 1
  %13 = load i32, i32* @count_bvecs, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %9, i32 0, i32 2
  %15 = load i32, i32* @set_bvec_pos, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %9, i32 0, i32 3
  %17 = load %struct.ceph_bvec_iter*, %struct.ceph_bvec_iter** %8, align 8
  %18 = bitcast %struct.ceph_bvec_iter* %17 to %union.rbd_img_fill_iter*
  store %union.rbd_img_fill_iter* %18, %union.rbd_img_fill_iter** %16, align 8
  %19 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %9, i32 0, i32 4
  %20 = load i32, i32* @OBJ_REQUEST_BVECS, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.rbd_img_request*, %struct.rbd_img_request** %5, align 8
  %22 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rbd_img_fill_request(%struct.rbd_img_request* %21, %struct.ceph_file_extent* %22, i32 %23, %struct.rbd_img_fill_ctx* %9)
  ret i32 %24
}

declare dso_local i32 @rbd_img_fill_request(%struct.rbd_img_request*, %struct.ceph_file_extent*, i32, %struct.rbd_img_fill_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
