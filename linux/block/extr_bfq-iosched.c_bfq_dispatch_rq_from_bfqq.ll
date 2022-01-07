; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_rq_from_bfqq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_rq_from_bfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.bfq_data = type { i32, %struct.bfq_queue*, i32, %struct.request* }
%struct.bfq_queue = type { %struct.request* }

@BFQQE_BUDGET_EXHAUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.bfq_data*, %struct.bfq_queue*)* @bfq_dispatch_rq_from_bfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @bfq_dispatch_rq_from_bfqq(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i64, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %8 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %7, i32 0, i32 0
  %9 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %9, %struct.request** %5, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %12 = call i64 @bfq_serv_to_charge(%struct.request* %10, %struct.bfq_queue* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @bfq_bfqq_served(%struct.bfq_queue* %13, i64 %14)
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %17 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %18 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %17, i32 0, i32 1
  %19 = load %struct.bfq_queue*, %struct.bfq_queue** %18, align 8
  %20 = icmp eq %struct.bfq_queue* %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %23 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %28 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %31 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %30, i32 0, i32 3
  store %struct.request* %29, %struct.request** %31, align 8
  br label %32

32:                                               ; preds = %26, %21, %2
  %33 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %34 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = call i32 @bfq_dispatch_remove(i32 %35, %struct.request* %36)
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %39 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %40 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %39, i32 0, i32 1
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %40, align 8
  %42 = icmp ne %struct.bfq_queue* %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %47 = call i32 @bfq_update_wr_data(%struct.bfq_data* %45, %struct.bfq_queue* %46)
  %48 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %49 = call i32 @bfq_tot_busy_queues(%struct.bfq_data* %48)
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %53 = call i64 @bfq_class_idle(%struct.bfq_queue* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %44
  br label %61

56:                                               ; preds = %51
  %57 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %58 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %59 = load i32, i32* @BFQQE_BUDGET_EXHAUSTED, align 4
  %60 = call i32 @bfq_bfqq_expire(%struct.bfq_data* %57, %struct.bfq_queue* %58, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %56, %55, %43
  %62 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %62
}

declare dso_local i64 @bfq_serv_to_charge(%struct.request*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_served(%struct.bfq_queue*, i64) #1

declare dso_local i32 @bfq_dispatch_remove(i32, %struct.request*) #1

declare dso_local i32 @bfq_update_wr_data(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_tot_busy_queues(%struct.bfq_data*) #1

declare dso_local i64 @bfq_class_idle(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_expire(%struct.bfq_data*, %struct.bfq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
