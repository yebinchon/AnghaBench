; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_try_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_try_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { i32 }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_sched_try_merge(%struct.request_queue* %0, %struct.bio* %1, i32 %2, %struct.request** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request**, align 8
  %10 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.request** %3, %struct.request*** %9, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %7, align 8
  %13 = call i32 @elv_merge(%struct.request_queue* %11, %struct.request** %10, %struct.bio* %12)
  switch i32 %13, label %73 [
    i32 130, label %14
    i32 128, label %41
    i32 129, label %68
  ]

14:                                               ; preds = %4
  %15 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %16 = load %struct.request*, %struct.request** %10, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = call i32 @blk_mq_sched_allow_merge(%struct.request_queue* %15, %struct.request* %16, %struct.bio* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %74

21:                                               ; preds = %14
  %22 = load %struct.request*, %struct.request** %10, align 8
  %23 = load %struct.bio*, %struct.bio** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @bio_attempt_back_merge(%struct.request* %22, %struct.bio* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %74

28:                                               ; preds = %21
  %29 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %30 = load %struct.request*, %struct.request** %10, align 8
  %31 = call %struct.request* @attempt_back_merge(%struct.request_queue* %29, %struct.request* %30)
  %32 = load %struct.request**, %struct.request*** %9, align 8
  store %struct.request* %31, %struct.request** %32, align 8
  %33 = load %struct.request**, %struct.request*** %9, align 8
  %34 = load %struct.request*, %struct.request** %33, align 8
  %35 = icmp ne %struct.request* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %38 = load %struct.request*, %struct.request** %10, align 8
  %39 = call i32 @elv_merged_request(%struct.request_queue* %37, %struct.request* %38, i32 130)
  br label %40

40:                                               ; preds = %36, %28
  store i32 1, i32* %5, align 4
  br label %74

41:                                               ; preds = %4
  %42 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %43 = load %struct.request*, %struct.request** %10, align 8
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = call i32 @blk_mq_sched_allow_merge(%struct.request_queue* %42, %struct.request* %43, %struct.bio* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %74

48:                                               ; preds = %41
  %49 = load %struct.request*, %struct.request** %10, align 8
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @bio_attempt_front_merge(%struct.request* %49, %struct.bio* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %74

55:                                               ; preds = %48
  %56 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %57 = load %struct.request*, %struct.request** %10, align 8
  %58 = call %struct.request* @attempt_front_merge(%struct.request_queue* %56, %struct.request* %57)
  %59 = load %struct.request**, %struct.request*** %9, align 8
  store %struct.request* %58, %struct.request** %59, align 8
  %60 = load %struct.request**, %struct.request*** %9, align 8
  %61 = load %struct.request*, %struct.request** %60, align 8
  %62 = icmp ne %struct.request* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = load %struct.request*, %struct.request** %10, align 8
  %66 = call i32 @elv_merged_request(%struct.request_queue* %64, %struct.request* %65, i32 128)
  br label %67

67:                                               ; preds = %63, %55
  store i32 1, i32* %5, align 4
  br label %74

68:                                               ; preds = %4
  %69 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %70 = load %struct.request*, %struct.request** %10, align 8
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = call i32 @bio_attempt_discard_merge(%struct.request_queue* %69, %struct.request* %70, %struct.bio* %71)
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %68, %67, %54, %47, %40, %27, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @elv_merge(%struct.request_queue*, %struct.request**, %struct.bio*) #1

declare dso_local i32 @blk_mq_sched_allow_merge(%struct.request_queue*, %struct.request*, %struct.bio*) #1

declare dso_local i32 @bio_attempt_back_merge(%struct.request*, %struct.bio*, i32) #1

declare dso_local %struct.request* @attempt_back_merge(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @elv_merged_request(%struct.request_queue*, %struct.request*, i32) #1

declare dso_local i32 @bio_attempt_front_merge(%struct.request*, %struct.bio*, i32) #1

declare dso_local %struct.request* @attempt_front_merge(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @bio_attempt_discard_merge(%struct.request_queue*, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
