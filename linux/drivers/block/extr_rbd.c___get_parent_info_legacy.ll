; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___get_parent_info_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___get_parent_info_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.page = type { i32 }
%struct.parent_image_info = type { i32, i32, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rbd\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"get_parent\00", align 1
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@e_inval = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, %struct.page*, %struct.page*, %struct.parent_image_info*)* @__get_parent_info_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_parent_info_legacy(%struct.rbd_device* %0, %struct.page* %1, %struct.page* %2, %struct.parent_image_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.parent_image_info*, align 8
  %10 = alloca %struct.ceph_osd_client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.parent_image_info* %3, %struct.parent_image_info** %9, align 8
  %15 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %16 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.ceph_osd_client* %20, %struct.ceph_osd_client** %10, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %10, align 8
  %23 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %24 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %23, i32 0, i32 1
  %25 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %26 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %25, i32 0, i32 0
  %27 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @ceph_osdc_call(%struct.ceph_osd_client* %22, i32* %24, i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27, %struct.page* %28, i32 4, %struct.page** %8, i64* %11)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %4
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call i8* @page_address(%struct.page* %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %42 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @e_inval, align 4
  %45 = call i32 @ceph_decode_64_safe(i8** %12, i8* %40, i32 %43, i32 %44)
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @ceph_extract_encoded_string(i8** %12, i8* %46, i32* null, i32 %47)
  %49 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %50 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %52 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %34
  %57 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %58 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %62 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %5, align 4
  br label %82

64:                                               ; preds = %34
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %67 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @e_inval, align 4
  %70 = call i32 @ceph_decode_64_safe(i8** %12, i8* %65, i32 %68, i32 %69)
  %71 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %72 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %75 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @e_inval, align 4
  %78 = call i32 @ceph_decode_64_safe(i8** %12, i8* %73, i32 %76, i32 %77)
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; No predecessors!
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %64, %56, %32
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @ceph_osdc_call(%struct.ceph_osd_client*, i32*, i32*, i8*, i8*, i32, %struct.page*, i32, %struct.page**, i64*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local i32* @ceph_extract_encoded_string(i8**, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
