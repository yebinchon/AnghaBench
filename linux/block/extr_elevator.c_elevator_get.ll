; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_get.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elevator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_type = type { i32 }
%struct.request_queue = type { i32 }

@elv_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-iosched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elevator_type* (%struct.request_queue*, i8*, i32)* @elevator_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elevator_type* @elevator_get(%struct.request_queue* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.elevator_type*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @spin_lock(i32* @elv_list_lock)
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.elevator_type* @elevator_find(i8* %9, i32 %12)
  store %struct.elevator_type* %13, %struct.elevator_type** %7, align 8
  %14 = load %struct.elevator_type*, %struct.elevator_type** %7, align 8
  %15 = icmp ne %struct.elevator_type* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = call i32 @spin_unlock(i32* @elv_list_lock)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @spin_lock(i32* @elv_list_lock)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.elevator_type* @elevator_find(i8* %24, i32 %27)
  store %struct.elevator_type* %28, %struct.elevator_type** %7, align 8
  br label %29

29:                                               ; preds = %19, %16, %3
  %30 = load %struct.elevator_type*, %struct.elevator_type** %7, align 8
  %31 = icmp ne %struct.elevator_type* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.elevator_type*, %struct.elevator_type** %7, align 8
  %34 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @try_module_get(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store %struct.elevator_type* null, %struct.elevator_type** %7, align 8
  br label %39

39:                                               ; preds = %38, %32, %29
  %40 = call i32 @spin_unlock(i32* @elv_list_lock)
  %41 = load %struct.elevator_type*, %struct.elevator_type** %7, align 8
  ret %struct.elevator_type* %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.elevator_type* @elevator_find(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
