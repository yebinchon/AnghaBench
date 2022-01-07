; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfs_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfs_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32, i32, i32, %struct.req*, %struct.device*, i32, i32, i32 }
%struct.device = type { i32 }

@thread = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@req_lock = common dso_local global i32 0, align 4
@requests = common dso_local global %struct.req* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devtmpfs_create_node(%struct.device* %0) #0 {
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
  br label %64

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %12 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 7
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %14 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 6
  store i32 %13, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 7
  %18 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 6
  %19 = call i32 @device_get_devnode(%struct.device* %15, i32* %16, i32* %17, i32* %18, i8** %4)
  %20 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  store i32 384, i32* %32, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i64 @is_blockdev(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @S_IFBLK, align 4
  %39 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 8
  br label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @S_IFCHR, align 4
  %44 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 4
  store %struct.device* %48, %struct.device** %49, align 8
  %50 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 2
  %51 = call i32 @init_completion(i32* %50)
  %52 = call i32 @spin_lock(i32* @req_lock)
  %53 = load %struct.req*, %struct.req** @requests, align 8
  %54 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 3
  store %struct.req* %53, %struct.req** %54, align 8
  store %struct.req* %5, %struct.req** @requests, align 8
  %55 = call i32 @spin_unlock(i32* @req_lock)
  %56 = load i32, i32* @thread, align 4
  %57 = call i32 @wake_up_process(i32 %56)
  %58 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 2
  %59 = call i32 @wait_for_completion(i32* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = getelementptr inbounds %struct.req, %struct.req* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %47, %24, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @device_get_devnode(%struct.device*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @is_blockdev(%struct.device*) #1

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
