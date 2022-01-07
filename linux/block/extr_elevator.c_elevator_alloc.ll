; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { i32, i32, i32, %struct.elevator_type* }
%struct.request_queue = type { i32 }
%struct.elevator_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@elv_ktype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca %struct.elevator_queue*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.elevator_queue* @kzalloc_node(i32 24, i32 %7, i32 %10)
  store %struct.elevator_queue* %11, %struct.elevator_queue** %6, align 8
  %12 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %13 = icmp ne %struct.elevator_queue* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.elevator_queue* null, %struct.elevator_queue** %3, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %21 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %22 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %21, i32 0, i32 3
  store %struct.elevator_type* %20, %struct.elevator_type** %22, align 8
  %23 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %24 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %23, i32 0, i32 2
  %25 = call i32 @kobject_init(i32* %24, i32* @elv_ktype)
  %26 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %27 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %30 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @hash_init(i32 %31)
  %33 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  store %struct.elevator_queue* %33, %struct.elevator_queue** %3, align 8
  br label %34

34:                                               ; preds = %19, %18
  %35 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  ret %struct.elevator_queue* %35
}

declare dso_local %struct.elevator_queue* @kzalloc_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
