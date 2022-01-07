; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_method_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_method_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RBD_DRV_NAME = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, %struct.ceph_object_id*, %struct.ceph_object_locator*, i8*, i8*, i64, i8*, i64)* @rbd_obj_method_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_method_sync(%struct.rbd_device* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rbd_device*, align 8
  %11 = alloca %struct.ceph_object_id*, align 8
  %12 = alloca %struct.ceph_object_locator*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ceph_osd_client*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %10, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %11, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %22 = load %struct.rbd_device*, %struct.rbd_device** %10, align 8
  %23 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.ceph_osd_client* %27, %struct.ceph_osd_client** %18, align 8
  store %struct.page* null, %struct.page** %19, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @E2BIG, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %95

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.page* @alloc_page(i32 %38)
  store %struct.page* %39, %struct.page** %19, align 8
  %40 = load %struct.page*, %struct.page** %19, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %95

45:                                               ; preds = %37
  %46 = load %struct.page*, %struct.page** %19, align 8
  %47 = call i8* @page_address(%struct.page* %46)
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @memcpy(i8* %47, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.page* @alloc_page(i32 %52)
  store %struct.page* %53, %struct.page** %20, align 8
  %54 = load %struct.page*, %struct.page** %20, align 8
  %55 = icmp ne %struct.page* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load %struct.page*, %struct.page** %19, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.page*, %struct.page** %19, align 8
  %61 = call i32 @__free_page(%struct.page* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %95

65:                                               ; preds = %51
  %66 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %18, align 8
  %67 = load %struct.ceph_object_id*, %struct.ceph_object_id** %11, align 8
  %68 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %12, align 8
  %69 = load i32, i32* @RBD_DRV_NAME, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %72 = load %struct.page*, %struct.page** %19, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @ceph_osdc_call(%struct.ceph_osd_client* %66, %struct.ceph_object_id* %67, %struct.ceph_object_locator* %68, i32 %69, i8* %70, i32 %71, %struct.page* %72, i64 %73, %struct.page** %20, i64* %17)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %65
  %78 = load i8*, i8** %16, align 8
  %79 = load %struct.page*, %struct.page** %20, align 8
  %80 = call i8* @page_address(%struct.page* %79)
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @memcpy(i8* %78, i8* %80, i64 %81)
  %83 = load i64, i64* %17, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %21, align 4
  br label %85

85:                                               ; preds = %77, %65
  %86 = load %struct.page*, %struct.page** %19, align 8
  %87 = icmp ne %struct.page* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.page*, %struct.page** %19, align 8
  %90 = call i32 @__free_page(%struct.page* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.page*, %struct.page** %20, align 8
  %93 = call i32 @__free_page(%struct.page* %92)
  %94 = load i32, i32* %21, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %62, %42, %34
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @ceph_osdc_call(%struct.ceph_osd_client*, %struct.ceph_object_id*, %struct.ceph_object_locator*, i32, i8*, i32, %struct.page*, i64, %struct.page**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
