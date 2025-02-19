; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_iosched_allow_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_iosched_allow_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.bio*)* @elv_iosched_allow_bio_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elv_iosched_allow_bio_merge(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %6, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.elevator_queue*, %struct.elevator_queue** %12, align 8
  store %struct.elevator_queue* %13, %struct.elevator_queue** %7, align 8
  %14 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %15 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request*, %struct.bio*)** %18, align 8
  %20 = icmp ne i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %23 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request*, %struct.bio*)** %26, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i32 %27(%struct.request_queue* %28, %struct.request* %29, %struct.bio* %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
