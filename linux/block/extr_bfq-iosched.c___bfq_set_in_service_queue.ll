; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_set_in_service_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_set_in_service_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i64, %struct.bfq_queue* }
%struct.bfq_queue = type { i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"set_in_service_queue, cur-budget = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*)* @__bfq_set_in_service_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfq_set_in_service_queue(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %5 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %6 = icmp ne %struct.bfq_queue* %5, null
  br i1 %6, label %7, label %77

7:                                                ; preds = %2
  %8 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %9 = call i32 @bfq_clear_bfqq_fifo_expire(%struct.bfq_queue* %8)
  %10 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 7
  %14 = add nsw i32 %13, 256
  %15 = sdiv i32 %14, 8
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %19 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @time_is_before_jiffies(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %7
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %25 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %33 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %28
  %37 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %38 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @time_is_before_jiffies(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %44 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %47 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @time_after(i64 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %54 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %58 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %65

61:                                               ; preds = %42
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %64 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %51
  br label %66

66:                                               ; preds = %65, %36, %28, %23, %7
  %67 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %68 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %69 = call i32 @bfq_set_budget_timeout(%struct.bfq_data* %67, %struct.bfq_queue* %68)
  %70 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %71 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %72 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %73 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @bfq_log_bfqq(%struct.bfq_data* %70, %struct.bfq_queue* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %66, %2
  %78 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %79 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %80 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %79, i32 0, i32 2
  store %struct.bfq_queue* %78, %struct.bfq_queue** %80, align 8
  ret void
}

declare dso_local i32 @bfq_clear_bfqq_fifo_expire(%struct.bfq_queue*) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @bfq_set_budget_timeout(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
