; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_may_expire_for_budg_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_may_expire_for_budg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"may_budget_timeout: wait_request %d left %d timeout %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_queue*)* @bfq_may_expire_for_budg_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_may_expire_for_budg_timeout(%struct.bfq_queue* %0) #0 {
  %2 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %2, align 8
  %3 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %4 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %8 = call i32 @bfq_bfqq_wait_request(%struct.bfq_queue* %7)
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %10 = call i32 @bfq_bfqq_budget_left(%struct.bfq_queue* %9)
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %12 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 3
  %16 = icmp sge i32 %10, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %19 = call i64 @bfq_bfqq_budget_timeout(%struct.bfq_queue* %18)
  %20 = call i32 @bfq_log_bfqq(i32 %5, %struct.bfq_queue* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %17, i64 %19)
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %22 = call i32 @bfq_bfqq_wait_request(%struct.bfq_queue* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %26 = call i32 @bfq_bfqq_budget_left(%struct.bfq_queue* %25)
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %28 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 3
  %32 = icmp sge i32 %26, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24, %1
  %34 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %35 = call i64 @bfq_bfqq_budget_timeout(%struct.bfq_queue* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @bfq_log_bfqq(i32, %struct.bfq_queue*, i8*, i32, i32, i64) #1

declare dso_local i32 @bfq_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_budget_left(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_budget_timeout(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
