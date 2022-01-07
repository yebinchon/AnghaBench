; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_get_default.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_type = type { i32 }
%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"mq-deadline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elevator_type* (%struct.request_queue*)* @elevator_get_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elevator_type* @elevator_get_default(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.elevator_type*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.elevator_type* null, %struct.elevator_type** %2, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = call %struct.elevator_type* @elevator_get(%struct.request_queue* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.elevator_type* %11, %struct.elevator_type** %2, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = load %struct.elevator_type*, %struct.elevator_type** %2, align 8
  ret %struct.elevator_type* %13
}

declare dso_local %struct.elevator_type* @elevator_get(%struct.request_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
