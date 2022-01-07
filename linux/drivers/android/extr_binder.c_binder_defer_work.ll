; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_defer_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_defer_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32, i32 }

@binder_deferred_lock = common dso_local global i32 0, align 4
@binder_deferred_list = common dso_local global i32 0, align 4
@binder_deferred_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_proc*, i32)* @binder_defer_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_defer_work(%struct.binder_proc* %0, i32 %1) #0 {
  %3 = alloca %struct.binder_proc*, align 8
  %4 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @binder_deferred_lock)
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %8 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %12 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %11, i32 0, i32 1
  %13 = call i64 @hlist_unhashed(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %17 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %16, i32 0, i32 1
  %18 = call i32 @hlist_add_head(i32* %17, i32* @binder_deferred_list)
  %19 = call i32 @schedule_work(i32* @binder_deferred_work)
  br label %20

20:                                               ; preds = %15, %2
  %21 = call i32 @mutex_unlock(i32* @binder_deferred_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
