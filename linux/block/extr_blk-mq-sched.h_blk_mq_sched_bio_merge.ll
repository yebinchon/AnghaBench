; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.h_blk_mq_sched_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.h_blk_mq_sched_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*, i32)* @blk_mq_sched_bio_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_sched_bio_merge(%struct.request_queue* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %9 = call i64 @blk_queue_nomerges(%struct.request_queue* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.bio*, %struct.bio** %6, align 8
  %13 = call i32 @bio_mergeable(%struct.bio* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %21

16:                                               ; preds = %11
  %17 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @__blk_mq_sched_bio_merge(%struct.request_queue* %17, %struct.bio* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @blk_queue_nomerges(%struct.request_queue*) #1

declare dso_local i32 @bio_mergeable(%struct.bio*) #1

declare dso_local i32 @__blk_mq_sched_bio_merge(%struct.request_queue*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
