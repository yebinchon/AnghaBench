; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_budget_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_budget_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64, i32, i32 }
%struct.bfq_queue = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*)* @bfq_set_budget_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_set_budget_timeout(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %7 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %10 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %16 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %20 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = udiv i32 %18, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = call i32 (...) @ktime_get()
  %26 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %27 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %30 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  %36 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %37 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  ret void
}

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
