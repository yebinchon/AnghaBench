; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_wait_for_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_wait_for_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32, i32, %struct.binder_proc* }
%struct.binder_proc = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_thread*, i32)* @binder_wait_for_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_wait_for_work(%struct.binder_thread* %0, i32 %1) #0 {
  %3 = alloca %struct.binder_thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binder_proc*, align 8
  %6 = alloca i32, align 4
  store %struct.binder_thread* %0, %struct.binder_thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %10 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %9, i32 0, i32 2
  %11 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  store %struct.binder_proc* %11, %struct.binder_proc** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 (...) @freezer_do_not_count()
  %13 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %14 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %13)
  br label %15

15:                                               ; preds = %49, %2
  %16 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %17 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %16, i32 0, i32 0
  %18 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %19 = call i32 @prepare_to_wait(i32* %17, i32* @wait, i32 %18)
  %20 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @binder_has_work_ilocked(%struct.binder_thread* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %50

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %30 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %29, i32 0, i32 1
  %31 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %32 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %36 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %35)
  %37 = call i32 (...) @schedule()
  %38 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %39 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %38)
  %40 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %41 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %40, i32 0, i32 1
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load i32, i32* @current, align 4
  %44 = call i64 @signal_pending(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %34
  br label %15

50:                                               ; preds = %46, %24
  %51 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %52 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %51, i32 0, i32 0
  %53 = call i32 @finish_wait(i32* %52, i32* @wait)
  %54 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %55 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %54)
  %56 = call i32 (...) @freezer_count()
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @freezer_do_not_count(...) #1

declare dso_local i32 @binder_inner_proc_lock(%struct.binder_proc*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @binder_has_work_ilocked(%struct.binder_thread*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @binder_inner_proc_unlock(%struct.binder_proc*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @freezer_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
