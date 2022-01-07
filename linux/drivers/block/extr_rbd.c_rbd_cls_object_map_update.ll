; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_cls_object_map_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_cls_object_map_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"rbd\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"object_map_update\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i32, i64, i32, i32*)* @rbd_cls_object_map_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_cls_object_map_update(%struct.ceph_osd_request* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_osd_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @osd_req_op_cls_init(%struct.ceph_osd_request* %16, i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %6, align 4
  br label %64

23:                                               ; preds = %5
  %24 = load i32, i32* @GFP_NOIO, align 4
  %25 = call %struct.page** @ceph_alloc_page_vector(i32 1, i32 %24)
  store %struct.page** %25, %struct.page*** %12, align 8
  %26 = load %struct.page**, %struct.page*** %12, align 8
  %27 = call i64 @IS_ERR(%struct.page** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.page**, %struct.page*** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.page** %30)
  store i32 %31, i32* %6, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load %struct.page**, %struct.page*** %12, align 8
  %34 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 0
  %35 = load %struct.page*, %struct.page** %34, align 8
  %36 = call i8* @page_address(%struct.page* %35)
  store i8* %36, i8** %14, align 8
  store i8* %36, i8** %13, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @ceph_encode_64(i8** %13, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @ceph_encode_64(i8** %13, i64 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ceph_encode_8(i8** %13, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = call i32 @ceph_encode_8(i8** %13, i32 1)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ceph_encode_8(i8** %13, i32 %49)
  br label %53

51:                                               ; preds = %32
  %52 = call i32 @ceph_encode_8(i8** %13, i32 0)
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.page**, %struct.page*** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request* %54, i32 %55, %struct.page** %56, i32 %62, i32 0, i32 0, i32 1)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %53, %29, %21
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @osd_req_op_cls_init(%struct.ceph_osd_request*, i32, i8*, i8*) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ceph_encode_64(i8**, i64) #1

declare dso_local i32 @ceph_encode_8(i8**, i32) #1

declare dso_local i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
