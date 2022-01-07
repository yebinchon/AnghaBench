; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfs_delete_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfs_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32, i32, %struct.req*, %struct.device*, i64, i32 }
%struct.device = type { i32 }

@thread = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@req_lock = common dso_local global i32 0, align 4
@requests = common dso_local global %struct.req* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devtmpfs_delete_node(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.req, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i32, i32* @thread, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @device_get_devnode(%struct.device* %10, i32* null, i32* null, i32* null, i8** %4)
  %12 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 5
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 3
  store %struct.device* %21, %struct.device** %22, align 8
  %23 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = call i32 @spin_lock(i32* @req_lock)
  %26 = load %struct.req*, %struct.req** @requests, align 8
  %27 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 2
  store %struct.req* %26, %struct.req** %27, align 8
  store %struct.req* %5, %struct.req** @requests, align 8
  %28 = call i32 @spin_unlock(i32* @req_lock)
  %29 = load i32, i32* @thread, align 4
  %30 = call i32 @wake_up_process(i32 %29)
  %31 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 1
  %32 = call i32 @wait_for_completion(i32* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %16, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @device_get_devnode(%struct.device*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
