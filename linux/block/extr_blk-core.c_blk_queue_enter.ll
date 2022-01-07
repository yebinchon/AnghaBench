; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_queue_enter.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_queue_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32 }

@BLK_MQ_REQ_PREEMPT = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_queue_enter(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BLK_MQ_REQ_PREEMPT, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %2, %76
  store i32 0, i32* %7, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 2
  %15 = call i64 @percpu_ref_tryget_live(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %22 = call i32 @blk_queue_pm_only(%struct.request_queue* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %17
  store i32 1, i32* %7, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 2
  %28 = call i32 @percpu_ref_put(i32* %27)
  br label %29

29:                                               ; preds = %25, %24
  br label %30

30:                                               ; preds = %29, %11
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %77

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %35
  %44 = call i32 (...) @smp_rmb()
  %45 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %57 = call i64 @blk_pm_request_resume(%struct.request_queue* %56)
  %58 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %59 = call i32 @blk_queue_pm_only(%struct.request_queue* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %66, label %62

62:                                               ; preds = %55, %43
  %63 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %64 = call i64 @blk_queue_dying(%struct.request_queue* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %55, %52
  %67 = phi i1 [ true, %55 ], [ true, %52 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @wait_event(i32 %47, i32 %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %71 = call i64 @blk_queue_dying(%struct.request_queue* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %66
  br label %11

77:                                               ; preds = %73, %40, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @percpu_ref_tryget_live(i32*) #1

declare dso_local i32 @blk_queue_pm_only(%struct.request_queue*) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @blk_pm_request_resume(%struct.request_queue*) #1

declare dso_local i64 @blk_queue_dying(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
