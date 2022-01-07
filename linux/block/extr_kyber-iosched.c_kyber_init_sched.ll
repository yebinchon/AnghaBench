; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_init_sched.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_init_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.kyber_queue_data*, i32 }
%struct.kyber_queue_data = type { i32 }
%struct.elevator_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.elevator_type*)* @kyber_init_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyber_init_sched(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.kyber_queue_data*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %10 = call %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %8, %struct.elevator_type* %9)
  store %struct.elevator_queue* %10, %struct.elevator_queue** %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %12 = icmp ne %struct.elevator_queue* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = call %struct.kyber_queue_data* @kyber_queue_data_alloc(%struct.request_queue* %17)
  store %struct.kyber_queue_data* %18, %struct.kyber_queue_data** %6, align 8
  %19 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %20 = call i64 @IS_ERR(%struct.kyber_queue_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %24 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %23, i32 0, i32 1
  %25 = call i32 @kobject_put(i32* %24)
  %26 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.kyber_queue_data* %26)
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %16
  %29 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %30 = call i32 @blk_stat_enable_accounting(%struct.request_queue* %29)
  %31 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %32 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %33 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %32, i32 0, i32 0
  store %struct.kyber_queue_data* %31, %struct.kyber_queue_data** %33, align 8
  %34 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  store %struct.elevator_queue* %34, %struct.elevator_queue** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %22, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local %struct.kyber_queue_data* @kyber_queue_data_alloc(%struct.request_queue*) #1

declare dso_local i64 @IS_ERR(%struct.kyber_queue_data*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.kyber_queue_data*) #1

declare dso_local i32 @blk_stat_enable_accounting(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
