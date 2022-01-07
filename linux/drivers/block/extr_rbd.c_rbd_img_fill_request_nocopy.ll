; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_fill_request_nocopy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_fill_request_nocopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_file_extent = type { i32, i32 }
%struct.rbd_img_fill_ctx = type { i32, i32, i32*, i32 }

@alloc_object_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*, %struct.ceph_file_extent*, i64, %struct.rbd_img_fill_ctx*)* @rbd_img_fill_request_nocopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_img_fill_request_nocopy(%struct.rbd_img_request* %0, %struct.ceph_file_extent* %1, i64 %2, %struct.rbd_img_fill_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rbd_img_request*, align 8
  %7 = alloca %struct.ceph_file_extent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rbd_img_fill_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %6, align 8
  store %struct.ceph_file_extent* %1, %struct.ceph_file_extent** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.rbd_img_fill_ctx* %3, %struct.rbd_img_fill_ctx** %9, align 8
  %12 = load %struct.rbd_img_fill_ctx*, %struct.rbd_img_fill_ctx** %9, align 8
  %13 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  %16 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rbd_img_fill_ctx*, %struct.rbd_img_fill_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rbd_img_fill_ctx*, %struct.rbd_img_fill_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %57, %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  %29 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %32, i64 %33
  %35 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ceph_file_extent*, %struct.ceph_file_extent** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %37, i64 %38
  %40 = getelementptr inbounds %struct.ceph_file_extent, %struct.ceph_file_extent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  %43 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %42, i32 0, i32 0
  %44 = load i32, i32* @alloc_object_extent, align 4
  %45 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  %46 = load %struct.rbd_img_fill_ctx*, %struct.rbd_img_fill_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rbd_img_fill_ctx*, %struct.rbd_img_fill_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.rbd_img_fill_ctx, %struct.rbd_img_fill_ctx* %49, i32 0, i32 0
  %51 = call i32 @ceph_file_to_extents(i32* %31, i32 %36, i32 %41, i32* %43, i32 %44, %struct.rbd_img_request* %45, i32 %48, i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %27
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  %62 = call i32 @__rbd_img_fill_request(%struct.rbd_img_request* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ceph_file_to_extents(i32*, i32, i32, i32*, i32, %struct.rbd_img_request*, i32, i32*) #1

declare dso_local i32 @__rbd_img_fill_request(%struct.rbd_img_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
