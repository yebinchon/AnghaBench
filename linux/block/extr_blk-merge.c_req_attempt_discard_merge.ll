; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_req_attempt_discard_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_req_attempt_discard_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i16, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.request*)* @req_attempt_discard_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_attempt_discard_merge(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i16, align 2
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = call zeroext i16 @blk_rq_nr_discard_segments(%struct.request* %9)
  store i16 %10, i16* %8, align 2
  %11 = load i16, i16* %8, align 2
  %12 = zext i16 %11 to i32
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = call zeroext i16 @queue_max_discard_segments(%struct.request_queue* %13)
  %15 = zext i16 %14 to i32
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i64 @blk_rq_sectors(%struct.request* %19)
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bio_sectors(i32 %23)
  %25 = add nsw i64 %20, %24
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @blk_rq_pos(%struct.request* %27)
  %29 = call i64 @blk_rq_get_max_sectors(%struct.request* %26, i32 %28)
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %42

32:                                               ; preds = %18
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = load %struct.request*, %struct.request** %7, align 8
  %36 = call zeroext i16 @blk_rq_nr_discard_segments(%struct.request* %35)
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %34, %37
  %39 = trunc i32 %38 to i16
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  store i16 %39, i16* %41, align 4
  store i32 1, i32* %4, align 4
  br label %46

42:                                               ; preds = %31, %17
  %43 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %44 = load %struct.request*, %struct.request** %6, align 8
  %45 = call i32 @req_set_nomerge(%struct.request_queue* %43, %struct.request* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local zeroext i16 @blk_rq_nr_discard_segments(%struct.request*) #1

declare dso_local zeroext i16 @queue_max_discard_segments(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(i32) #1

declare dso_local i64 @blk_rq_get_max_sectors(%struct.request*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @req_set_nomerge(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
