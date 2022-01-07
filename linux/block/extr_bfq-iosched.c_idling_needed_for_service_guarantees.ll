; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_idling_needed_for_service_guarantees.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_idling_needed_for_service_guarantees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64, i64 }
%struct.bfq_queue = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.bfq_queue*)* @idling_needed_for_service_guarantees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idling_needed_for_service_guarantees(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %5 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %6 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %14 = call i64 @bfq_tot_busy_queues(%struct.bfq_data* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %18 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %21 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 4
  %24 = icmp sge i64 %19, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %28 = call i64 @bfq_asymmetric_scenario(%struct.bfq_data* %26, %struct.bfq_queue* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %16, %9
  %31 = phi i1 [ true, %16 ], [ true, %9 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @bfq_tot_busy_queues(%struct.bfq_data*) #1

declare dso_local i64 @bfq_asymmetric_scenario(%struct.bfq_data*, %struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
