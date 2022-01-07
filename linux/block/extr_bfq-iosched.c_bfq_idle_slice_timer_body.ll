; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_idle_slice_timer_body.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_idle_slice_timer_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i64*, %struct.bfq_data* }
%struct.bfq_data = type { i32, %struct.bfq_queue* }

@BFQQE_BUDGET_TIMEOUT = common dso_local global i32 0, align 4
@BFQQE_TOO_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_queue*)* @bfq_idle_slice_timer_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_idle_slice_timer_body(%struct.bfq_queue* %0) #0 {
  %2 = alloca %struct.bfq_queue*, align 8
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %2, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %7 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %6, i32 0, i32 1
  %8 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  store %struct.bfq_data* %8, %struct.bfq_data** %3, align 8
  %9 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %10 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %14 = call i32 @bfq_clear_bfqq_wait_request(%struct.bfq_queue* %13)
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %16, i32 0, i32 1
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %17, align 8
  %19 = icmp ne %struct.bfq_queue* %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %22 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %61

25:                                               ; preds = %1
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %27 = call i64 @bfq_bfqq_budget_timeout(%struct.bfq_queue* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @BFQQE_BUDGET_TIMEOUT, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %33 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %40 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @BFQQE_TOO_IDLE, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %38, %31
  br label %54

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %51 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @bfq_bfqq_expire(%struct.bfq_data* %50, %struct.bfq_queue* %51, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %49, %47
  %55 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %56 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %55, i32 0, i32 0
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %60 = call i32 @bfq_schedule_dispatch(%struct.bfq_data* %59)
  br label %61

61:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfq_clear_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @bfq_bfqq_budget_timeout(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_expire(%struct.bfq_data*, %struct.bfq_queue*, i32, i32) #1

declare dso_local i32 @bfq_schedule_dispatch(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
