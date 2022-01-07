; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_post_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_post_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32 }

@RPM_SUSPENDED = common dso_local global i32 0, align 4
@RPM_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_post_runtime_suspend(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @RPM_SUSPENDED, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %28

20:                                               ; preds = %10
  %21 = load i32, i32* @RPM_ACTIVE, align 4
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_mark_last_busy(i32 %26)
  br label %28

28:                                               ; preds = %20, %16
  %29 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = call i32 @blk_clear_pm_only(%struct.request_queue* %35)
  br label %37

37:                                               ; preds = %9, %34, %28
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_clear_pm_only(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
