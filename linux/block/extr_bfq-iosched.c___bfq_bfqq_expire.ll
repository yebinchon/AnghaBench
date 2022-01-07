; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_bfqq_expire.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_bfqq_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i64, i32, i32 }

@BFQQE_PREEMPTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.bfq_queue*, i32)* @__bfq_bfqq_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bfq_bfqq_expire(%struct.bfq_data* %0, %struct.bfq_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %8 = call i64 @bfq_bfqq_coop(%struct.bfq_queue* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %12 = call i64 @BFQQ_SEEKY(%struct.bfq_queue* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %16 = call i32 @bfq_mark_bfqq_split_coop(%struct.bfq_queue* %15)
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %19 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %18, i32 0, i32 1
  %20 = call i64 @RB_EMPTY_ROOT(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BFQQE_PREEMPTED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %28 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %29 = call i64 @idling_needed_for_service_guarantees(%struct.bfq_data* %27, %struct.bfq_queue* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %33 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %39 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %43 = call i32 @bfq_del_bfqq_busy(%struct.bfq_data* %41, %struct.bfq_queue* %42, i32 1)
  br label %68

44:                                               ; preds = %26, %17
  %45 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %47 = call i32 @bfq_requeue_bfqq(%struct.bfq_data* %45, %struct.bfq_queue* %46, i32 1)
  %48 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %49 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %54 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %53, i32 0, i32 1
  %55 = call i64 @RB_EMPTY_ROOT(i32* %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %44
  %59 = phi i1 [ false, %44 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %65 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %66 = call i32 @bfq_pos_tree_add_move(%struct.bfq_data* %64, %struct.bfq_queue* %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %70 = call i32 @__bfq_bfqd_reset_in_service(%struct.bfq_data* %69)
  ret i32 %70
}

declare dso_local i64 @bfq_bfqq_coop(%struct.bfq_queue*) #1

declare dso_local i64 @BFQQ_SEEKY(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_split_coop(%struct.bfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @idling_needed_for_service_guarantees(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_del_bfqq_busy(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_requeue_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bfq_pos_tree_add_move(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @__bfq_bfqd_reset_in_service(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
