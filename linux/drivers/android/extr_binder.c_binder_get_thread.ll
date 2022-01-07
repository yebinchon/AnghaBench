; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32 }
%struct.binder_proc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.binder_thread* (%struct.binder_proc*)* @binder_get_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.binder_thread* @binder_get_thread(%struct.binder_proc* %0) #0 {
  %2 = alloca %struct.binder_thread*, align 8
  %3 = alloca %struct.binder_proc*, align 8
  %4 = alloca %struct.binder_thread*, align 8
  %5 = alloca %struct.binder_thread*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %3, align 8
  %6 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %7 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %6)
  %8 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %9 = call %struct.binder_thread* @binder_get_thread_ilocked(%struct.binder_proc* %8, %struct.binder_thread* null)
  store %struct.binder_thread* %9, %struct.binder_thread** %4, align 8
  %10 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %11 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %10)
  %12 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %13 = icmp ne %struct.binder_thread* %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.binder_thread* @kzalloc(i32 4, i32 %15)
  store %struct.binder_thread* %16, %struct.binder_thread** %5, align 8
  %17 = load %struct.binder_thread*, %struct.binder_thread** %5, align 8
  %18 = icmp eq %struct.binder_thread* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.binder_thread* null, %struct.binder_thread** %2, align 8
  br label %37

20:                                               ; preds = %14
  %21 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %22 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %21)
  %23 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %24 = load %struct.binder_thread*, %struct.binder_thread** %5, align 8
  %25 = call %struct.binder_thread* @binder_get_thread_ilocked(%struct.binder_proc* %23, %struct.binder_thread* %24)
  store %struct.binder_thread* %25, %struct.binder_thread** %4, align 8
  %26 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %27 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %26)
  %28 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %29 = load %struct.binder_thread*, %struct.binder_thread** %5, align 8
  %30 = icmp ne %struct.binder_thread* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.binder_thread*, %struct.binder_thread** %5, align 8
  %33 = call i32 @kfree(%struct.binder_thread* %32)
  br label %34

34:                                               ; preds = %31, %20
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  store %struct.binder_thread* %36, %struct.binder_thread** %2, align 8
  br label %37

37:                                               ; preds = %35, %19
  %38 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  ret %struct.binder_thread* %38
}

declare dso_local i32 @binder_inner_proc_lock(%struct.binder_proc*) #1

declare dso_local %struct.binder_thread* @binder_get_thread_ilocked(%struct.binder_proc*, %struct.binder_thread*) #1

declare dso_local i32 @binder_inner_proc_unlock(%struct.binder_proc*) #1

declare dso_local %struct.binder_thread* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.binder_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
