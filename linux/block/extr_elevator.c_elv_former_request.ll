; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_former_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_former_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @elv_former_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  store %struct.elevator_queue* %9, %struct.elevator_queue** %6, align 8
  %10 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %11 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to %struct.request* (%struct.request_queue*, %struct.request*)**
  %16 = load %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)** %15, align 8
  %17 = icmp ne %struct.request* (%struct.request_queue*, %struct.request*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %20 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to %struct.request* (%struct.request_queue*, %struct.request*)**
  %25 = load %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)** %24, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = call %struct.request* %25(%struct.request_queue* %26, %struct.request* %27)
  store %struct.request* %28, %struct.request** %3, align 8
  br label %30

29:                                               ; preds = %2
  store %struct.request* null, %struct.request** %3, align 8
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
