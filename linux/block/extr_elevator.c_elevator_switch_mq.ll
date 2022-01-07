; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_switch_mq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_switch_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.elevator_type = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"elv switch: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"elv switch: none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elevator_switch_mq(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.elevator_type*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = call i32 @elv_unregister_queue(%struct.request_queue* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = call i32 @ioc_clear_queue(%struct.request_queue* %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @elevator_exit(%struct.request_queue* %26, %struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %23, %2
  %32 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %33 = load %struct.elevator_type*, %struct.elevator_type** %4, align 8
  %34 = call i32 @blk_mq_init_sched(%struct.request_queue* %32, %struct.elevator_type* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.elevator_type*, %struct.elevator_type** %4, align 8
  %40 = icmp ne %struct.elevator_type* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %43 = call i32 @elv_register_queue(%struct.request_queue* %42, i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %48 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @elevator_exit(%struct.request_queue* %47, %struct.TYPE_2__* %50)
  br label %66

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.elevator_type*, %struct.elevator_type** %4, align 8
  %55 = icmp ne %struct.elevator_type* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %58 = load %struct.elevator_type*, %struct.elevator_type** %4, align 8
  %59 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.request_queue*, i8*, ...) @blk_add_trace_msg(%struct.request_queue* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %53
  %63 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %64 = call i32 (%struct.request_queue*, i8*, ...) @blk_add_trace_msg(%struct.request_queue* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %46, %37
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @elv_unregister_queue(%struct.request_queue*) #1

declare dso_local i32 @ioc_clear_queue(%struct.request_queue*) #1

declare dso_local i32 @elevator_exit(%struct.request_queue*, %struct.TYPE_2__*) #1

declare dso_local i32 @blk_mq_init_sched(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local i32 @elv_register_queue(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_add_trace_msg(%struct.request_queue*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
