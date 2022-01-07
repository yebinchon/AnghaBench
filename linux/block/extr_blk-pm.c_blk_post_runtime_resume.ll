; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_post_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_post_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32 }

@RPM_ACTIVE = common dso_local global i32 0, align 4
@RPM_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_post_runtime_resume(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @RPM_ACTIVE, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_mark_last_busy(i32 %22)
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_request_autosuspend(i32 %26)
  br label %32

28:                                               ; preds = %10
  %29 = load i32, i32* @RPM_SUSPENDED, align 4
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %16
  %33 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %40 = call i32 @blk_clear_pm_only(%struct.request_queue* %39)
  br label %41

41:                                               ; preds = %9, %38, %32
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_request_autosuspend(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_clear_pm_only(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
