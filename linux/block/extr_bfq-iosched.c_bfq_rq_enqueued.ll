; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_rq_enqueued.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_rq_enqueued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, %struct.bfq_queue* }
%struct.bfq_queue = type { i32*, i64, i32 }
%struct.request = type { i32 }

@REQ_META = common dso_local global i32 0, align 4
@BFQQE_BUDGET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*, %struct.request*)* @bfq_rq_enqueued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_rq_enqueued(%struct.bfq_data* %0, %struct.bfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REQ_META, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %17 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = call i64 @blk_rq_pos(%struct.request* %21)
  %23 = load %struct.request*, %struct.request** %6, align 8
  %24 = call i32 @blk_rq_sectors(%struct.request* %23)
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %28 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %30 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %31 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %30, i32 0, i32 1
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %31, align 8
  %33 = icmp eq %struct.bfq_queue* %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %20
  %35 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %36 = call i64 @bfq_bfqq_wait_request(%struct.bfq_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %40 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = call i64 @rq_is_sync(%struct.request* %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.request*, %struct.request** %6, align 8
  %49 = call i32 @blk_rq_sectors(%struct.request* %48)
  %50 = icmp slt i32 %49, 32
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi i1 [ false, %38 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %55 = call i32 @bfq_bfqq_budget_timeout(%struct.bfq_queue* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %61 = call i64 @idling_boosts_thr_without_issues(%struct.bfq_data* %59, %struct.bfq_queue* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %81

67:                                               ; preds = %63, %58, %51
  %68 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %69 = call i32 @bfq_clear_bfqq_wait_request(%struct.bfq_queue* %68)
  %70 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %71 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %70, i32 0, i32 0
  %72 = call i32 @hrtimer_try_to_cancel(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %77 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %78 = load i32, i32* @BFQQE_BUDGET_TIMEOUT, align 4
  %79 = call i32 @bfq_bfqq_expire(%struct.bfq_data* %76, %struct.bfq_queue* %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %81

81:                                               ; preds = %66, %80, %34, %20
  ret void
}

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bfq_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @bfq_bfqq_budget_timeout(%struct.bfq_queue*) #1

declare dso_local i64 @idling_boosts_thr_without_issues(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @bfq_bfqq_expire(%struct.bfq_data*, %struct.bfq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
