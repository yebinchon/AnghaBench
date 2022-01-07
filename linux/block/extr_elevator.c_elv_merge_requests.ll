; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_merge_requests.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_merge_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request*, %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.request_queue*, %struct.request*, %struct.request*)* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_merge_requests(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 1
  %10 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  store %struct.elevator_queue* %10, %struct.elevator_queue** %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %12 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.request_queue*, %struct.request*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*, %struct.request*)** %15, align 8
  %17 = icmp ne i32 (%struct.request_queue*, %struct.request*, %struct.request*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %20 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.request_queue*, %struct.request*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*, %struct.request*)** %23, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 %24(%struct.request_queue* %25, %struct.request* %26, %struct.request* %27)
  br label %29

29:                                               ; preds = %18, %3
  %30 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i32 @elv_rqhash_reposition(%struct.request_queue* %30, %struct.request* %31)
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 0
  store %struct.request* %33, %struct.request** %35, align 8
  ret void
}

declare dso_local i32 @elv_rqhash_reposition(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
