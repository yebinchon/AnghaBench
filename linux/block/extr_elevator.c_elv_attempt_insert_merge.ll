; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_attempt_insert_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_attempt_insert_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elv_attempt_insert_merge(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = call i64 @blk_queue_nomerges(%struct.request_queue* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load %struct.request*, %struct.request** %14, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load %struct.request*, %struct.request** %20, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i64 @blk_attempt_req_merge(%struct.request_queue* %18, %struct.request* %21, %struct.request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %50

26:                                               ; preds = %17, %12
  %27 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %28 = call i64 @blk_queue_noxmerges(%struct.request_queue* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %50

31:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %46
  %33 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = call i32 @blk_rq_pos(%struct.request* %34)
  %36 = call %struct.request* @elv_rqhash_find(%struct.request_queue* %33, i32 %35)
  store %struct.request* %36, %struct.request** %6, align 8
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = icmp ne %struct.request* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = load %struct.request*, %struct.request** %5, align 8
  %43 = call i64 @blk_attempt_req_merge(%struct.request_queue* %40, %struct.request* %41, %struct.request* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %32
  br label %48

46:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  %47 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %47, %struct.request** %5, align 8
  br label %32

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %30, %25, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @blk_queue_nomerges(%struct.request_queue*) #1

declare dso_local i64 @blk_attempt_req_merge(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i64 @blk_queue_noxmerges(%struct.request_queue*) #1

declare dso_local %struct.request* @elv_rqhash_find(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
