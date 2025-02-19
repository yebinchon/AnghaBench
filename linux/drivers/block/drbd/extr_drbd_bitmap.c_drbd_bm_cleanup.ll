; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_bm_cleanup(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %3 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @expect(%struct.TYPE_3__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bm_free_pages(i32 %14, i32 %19)
  %21 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %22 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bm_vk_free(i32 %25)
  %27 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @kfree(%struct.TYPE_3__* %29)
  %31 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %32 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %31, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %32, align 8
  br label %33

33:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @expect(%struct.TYPE_3__*) #1

declare dso_local i32 @bm_free_pages(i32, i32) #1

declare dso_local i32 @bm_vk_free(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
