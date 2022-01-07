; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_init_mq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_init_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32 }
%struct.elevator_type = type { i32 }

@QUEUE_FLAG_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"\22%s\22 elevator initialization failed, falling back to \22none\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elevator_init_mq(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.elevator_type*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = call i32 @elv_support_iosched(%struct.request_queue* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @QUEUE_FLAG_REGISTERED, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %57

21:                                               ; preds = %9
  %22 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %28 = call %struct.elevator_type* @elevator_get_default(%struct.request_queue* %27)
  store %struct.elevator_type* %28, %struct.elevator_type** %3, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = call %struct.elevator_type* @elevator_get_by_features(%struct.request_queue* %30)
  store %struct.elevator_type* %31, %struct.elevator_type** %3, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %34 = icmp ne %struct.elevator_type* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %57

36:                                               ; preds = %32
  %37 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %38 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %37)
  %39 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %40 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %39)
  %41 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %42 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %43 = call i32 @blk_mq_init_sched(%struct.request_queue* %41, %struct.elevator_type* %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %45 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %44)
  %46 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %47 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %52 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %56 = call i32 @elevator_put(%struct.elevator_type* %55)
  br label %57

57:                                               ; preds = %8, %20, %35, %50, %36
  ret void
}

declare dso_local i32 @elv_support_iosched(%struct.request_queue*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.elevator_type* @elevator_get_default(%struct.request_queue*) #1

declare dso_local %struct.elevator_type* @elevator_get_by_features(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_init_sched(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @elevator_put(%struct.elevator_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
