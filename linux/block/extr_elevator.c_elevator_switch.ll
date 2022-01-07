; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_switch.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.elevator_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.elevator_type*)* @elevator_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elevator_switch(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.elevator_type*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %9)
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %11)
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = load %struct.elevator_type*, %struct.elevator_type** %4, align 8
  %15 = call i32 @elevator_switch_mq(%struct.request_queue* %13, %struct.elevator_type* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %19 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @elevator_switch_mq(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
