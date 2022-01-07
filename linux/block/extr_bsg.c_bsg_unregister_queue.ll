; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_unregister_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_unregister_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__, %struct.bsg_class_device }
%struct.TYPE_2__ = type { i64 }
%struct.bsg_class_device = type { i32*, i32 }

@bsg_mutex = common dso_local global i32 0, align 4
@bsg_minor_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bsg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsg_unregister_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.bsg_class_device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 1
  store %struct.bsg_class_device* %5, %struct.bsg_class_device** %3, align 8
  %6 = load %struct.bsg_class_device*, %struct.bsg_class_device** %3, align 8
  %7 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @bsg_mutex)
  %13 = load %struct.bsg_class_device*, %struct.bsg_class_device** %3, align 8
  %14 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @idr_remove(i32* @bsg_minor_idr, i32 %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = call i32 @sysfs_remove_link(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %11
  %27 = load %struct.bsg_class_device*, %struct.bsg_class_device** %3, align 8
  %28 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @device_unregister(i32* %29)
  %31 = load %struct.bsg_class_device*, %struct.bsg_class_device** %3, align 8
  %32 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = call i32 @mutex_unlock(i32* @bsg_mutex)
  br label %34

34:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @sysfs_remove_link(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
