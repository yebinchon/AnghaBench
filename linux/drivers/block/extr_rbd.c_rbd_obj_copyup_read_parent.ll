; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_read_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_read_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32 }

@MODS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_copyup_read_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_copyup_read_parent(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %6 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %7 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rbd_device*, %struct.rbd_device** %9, align 8
  store %struct.rbd_device* %10, %struct.rbd_device** %4, align 8
  %11 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %12 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rbd_assert(i32 %13)
  %15 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %16 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %19 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %18, i32 0, i32 0
  %20 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %21 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @prune_extents(i32 %17, i32* %19, i32 %22)
  %24 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %25 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %30 = load i32, i32* @MODS_ONLY, align 4
  %31 = call i32 @rbd_obj_copyup_current_snapc(%struct.rbd_obj_request* %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %1
  %33 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %34 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %35 = call i32 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request* %34)
  %36 = call i32 @setup_copyup_bvecs(%struct.rbd_obj_request* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %43 = call i32 @rbd_obj_read_from_parent(%struct.rbd_obj_request* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %39, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @prune_extents(i32, i32*, i32) #1

declare dso_local i32 @rbd_obj_copyup_current_snapc(%struct.rbd_obj_request*, i32) #1

declare dso_local i32 @setup_copyup_bvecs(%struct.rbd_obj_request*, i32) #1

declare dso_local i32 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_read_from_parent(%struct.rbd_obj_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
