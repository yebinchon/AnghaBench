; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_pre_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_pre_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, i32, i32, i32 }

@RPM_ACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@RPM_SUSPENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_pre_runtime_suspend(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RPM_ACTIVE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = call i32 @blk_set_pm_only(%struct.request_queue* %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = call i32 @blk_freeze_queue_start(%struct.request_queue* %23)
  %25 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 3
  %27 = call i32 @percpu_ref_switch_to_atomic_sync(i32* %26)
  %28 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 3
  %30 = call i64 @percpu_ref_is_zero(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %35 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %34)
  %36 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_mark_last_busy(i32 %44)
  br label %50

46:                                               ; preds = %33
  %47 = load i64, i64* @RPM_SUSPENDING, align 8
  %48 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %58 = call i32 @blk_clear_pm_only(%struct.request_queue* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_set_pm_only(%struct.request_queue*) #1

declare dso_local i32 @blk_freeze_queue_start(%struct.request_queue*) #1

declare dso_local i32 @percpu_ref_switch_to_atomic_sync(i32*) #1

declare dso_local i64 @percpu_ref_is_zero(i32*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

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
