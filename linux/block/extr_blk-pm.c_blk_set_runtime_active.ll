; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_set_runtime_active.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-pm.c_blk_set_runtime_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i64, i32 }

@RPM_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_set_runtime_active(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* @RPM_ACTIVE, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pm_runtime_mark_last_busy(i64 %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pm_request_autosuspend(i64 %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  br label %25

25:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i64) #1

declare dso_local i32 @pm_request_autosuspend(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
