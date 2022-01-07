; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___get_parent_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___get_parent_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.page = type { i32 }
%struct.parent_image_info = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rbd\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"parent_get\00", align 1
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"parent_overlap_get\00", align 1
@e_inval = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, %struct.page*, %struct.page*, %struct.parent_image_info*)* @__get_parent_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_parent_info(%struct.rbd_device* %0, %struct.page* %1, %struct.page* %2, %struct.parent_image_info* %3) #0 {
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
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 1, %37 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  br label %95

42:                                               ; preds = %4
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i8* @page_address(%struct.page* %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %50 = call i32 @decode_parent_image_spec(i8** %12, i8* %48, %struct.parent_image_info* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %95

55:                                               ; preds = %42
  %56 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %10, align 8
  %57 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %58 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %57, i32 0, i32 1
  %59 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %60 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %59, i32 0, i32 0
  %61 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i32 @ceph_osdc_call(%struct.ceph_osd_client* %56, i32* %58, i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %61, %struct.page* %62, i32 4, %struct.page** %8, i64* %11)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %95

68:                                               ; preds = %55
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = call i8* @page_address(%struct.page* %69)
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr i8, i8* %71, i64 %72
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %76 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @e_inval, align 4
  %79 = call i32 @ceph_decode_8_safe(i8** %12, i8* %74, i32 %77, i32 %78)
  %80 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %81 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.parent_image_info*, %struct.parent_image_info** %9, align 8
  %87 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @e_inval, align 4
  %90 = call i32 @ceph_decode_64_safe(i8** %12, i8* %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %68
  store i32 0, i32* %5, align 4
  br label %95

92:                                               ; No predecessors!
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %91, %66, %53, %40
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @ceph_osdc_call(%struct.ceph_osd_client*, i32*, i32*, i8*, i8*, i32, %struct.page*, i32, %struct.page**, i64*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @decode_parent_image_spec(i8**, i8*, %struct.parent_image_info*) #1

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
