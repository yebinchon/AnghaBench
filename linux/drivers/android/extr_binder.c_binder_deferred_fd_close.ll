; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_deferred_fd_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_deferred_fd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_task_work_cb = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@binder_do_fd_close = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @binder_deferred_fd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_deferred_fd_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.binder_task_work_cb*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.binder_task_work_cb* @kzalloc(i32 16, i32 %4)
  store %struct.binder_task_work_cb* %5, %struct.binder_task_work_cb** %3, align 8
  %6 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %7 = icmp ne %struct.binder_task_work_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %11 = getelementptr inbounds %struct.binder_task_work_cb, %struct.binder_task_work_cb* %10, i32 0, i32 0
  %12 = load i32, i32* @binder_do_fd_close, align 4
  %13 = call i32 @init_task_work(i32* %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %16 = getelementptr inbounds %struct.binder_task_work_cb, %struct.binder_task_work_cb* %15, i32 0, i32 1
  %17 = call i32 @__close_fd_get_file(i32 %14, i64* %16)
  %18 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %19 = getelementptr inbounds %struct.binder_task_work_cb, %struct.binder_task_work_cb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load i32, i32* @current, align 4
  %24 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %25 = getelementptr inbounds %struct.binder_task_work_cb, %struct.binder_task_work_cb* %24, i32 0, i32 0
  %26 = call i32 @task_work_add(i32 %23, i32* %25, i32 1)
  br label %30

27:                                               ; preds = %9
  %28 = load %struct.binder_task_work_cb*, %struct.binder_task_work_cb** %3, align 8
  %29 = call i32 @kfree(%struct.binder_task_work_cb* %28)
  br label %30

30:                                               ; preds = %8, %27, %22
  ret void
}

declare dso_local %struct.binder_task_work_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @init_task_work(i32*, i32) #1

declare dso_local i32 @__close_fd_get_file(i32, i64*) #1

declare dso_local i32 @task_work_add(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.binder_task_work_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
