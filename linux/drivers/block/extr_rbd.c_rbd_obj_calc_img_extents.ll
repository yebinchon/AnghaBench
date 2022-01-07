; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_calc_img_extents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_calc_img_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i32)* @rbd_obj_calc_img_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_calc_img_extents(%struct.rbd_obj_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_obj_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.rbd_device*, %struct.rbd_device** %11, align 8
  store %struct.rbd_device* %12, %struct.rbd_device** %6, align 8
  %13 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %20 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %19, i32 0, i32 1
  %21 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %22 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %33

28:                                               ; preds = %18
  %29 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %30 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i32 [ 0, %27 ], [ %32, %28 ]
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %44 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i32 [ %41, %37 ], [ %46, %42 ]
  %49 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %50 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %49, i32 0, i32 1
  %51 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %52 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %51, i32 0, i32 0
  %53 = call i32 @ceph_extent_to_file(%struct.TYPE_6__* %20, i32 %24, i32 %34, i32 %48, i32* %50, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %68

58:                                               ; preds = %47
  %59 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %60 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %63 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %62, i32 0, i32 0
  %64 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %65 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @prune_extents(i32 %61, i32* %63, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %58, %56, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ceph_extent_to_file(%struct.TYPE_6__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @prune_extents(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
