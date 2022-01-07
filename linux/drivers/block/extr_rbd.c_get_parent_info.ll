; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_get_parent_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_get_parent_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.parent_image_info = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, %struct.parent_image_info*)* @get_parent_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parent_info(%struct.rbd_device* %0, %struct.parent_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca %struct.parent_image_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %4, align 8
  store %struct.parent_image_info* %1, %struct.parent_image_info** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @__free_page(%struct.page* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i8* @page_address(%struct.page* %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %31 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ceph_encode_64(i8** %8, i32 %34)
  %36 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = load %struct.parent_image_info*, %struct.parent_image_info** %5, align 8
  %40 = call i32 @__get_parent_info(%struct.rbd_device* %36, %struct.page* %37, %struct.page* %38, %struct.parent_image_info* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = load %struct.parent_image_info*, %struct.parent_image_info** %5, align 8
  %48 = call i32 @__get_parent_info_legacy(%struct.rbd_device* %44, %struct.page* %45, %struct.page* %46, %struct.parent_image_info* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %27
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = call i32 @__free_page(%struct.page* %50)
  %52 = load %struct.page*, %struct.page** %7, align 8
  %53 = call i32 @__free_page(%struct.page* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %22, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ceph_encode_64(i8**, i32) #1

declare dso_local i32 @__get_parent_info(%struct.rbd_device*, %struct.page*, %struct.page*, %struct.parent_image_info*) #1

declare dso_local i32 @__get_parent_info_legacy(%struct.rbd_device*, %struct.page*, %struct.page*, %struct.parent_image_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
