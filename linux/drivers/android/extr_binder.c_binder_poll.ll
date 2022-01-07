; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.binder_proc* }
%struct.binder_proc = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.binder_thread = type { i32, i32, i32 }

@POLLERR = common dso_local global i32 0, align 4
@BINDER_LOOPER_STATE_POLL = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @binder_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.binder_proc*, align 8
  %7 = alloca %struct.binder_thread*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  store %struct.binder_proc* %11, %struct.binder_proc** %6, align 8
  store %struct.binder_thread* null, %struct.binder_thread** %7, align 8
  %12 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %13 = call %struct.binder_thread* @binder_get_thread(%struct.binder_proc* %12)
  store %struct.binder_thread* %13, %struct.binder_thread** %7, align 8
  %14 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %15 = icmp ne %struct.binder_thread* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @POLLERR, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %20 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @binder_inner_proc_lock(i32 %21)
  %23 = load i32, i32* @BINDER_LOOPER_STATE_POLL, align 4
  %24 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %25 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %29 = call i32 @binder_available_for_proc_work_ilocked(%struct.binder_thread* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %31 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @binder_inner_proc_unlock(i32 %32)
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %36 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %35, i32 0, i32 0
  %37 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %38 = call i32 @poll_wait(%struct.file* %34, i32* %36, %struct.poll_table_struct* %37)
  %39 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @binder_has_work(%struct.binder_thread* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %18
  %44 = load i32, i32* @EPOLLIN, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.binder_thread* @binder_get_thread(%struct.binder_proc*) #1

declare dso_local i32 @binder_inner_proc_lock(i32) #1

declare dso_local i32 @binder_available_for_proc_work_ilocked(%struct.binder_thread*) #1

declare dso_local i32 @binder_inner_proc_unlock(i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i64 @binder_has_work(%struct.binder_thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
