; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_attempt_discard_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_attempt_discard_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i16, i32, %struct.bio* }
%struct.bio = type { %struct.TYPE_2__, %struct.bio* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_attempt_discard_merge(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i16, align 2
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
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
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i64 @blk_rq_sectors(%struct.request* %19)
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = call i64 @bio_sectors(%struct.bio* %21)
  %23 = add nsw i64 %20, %22
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = call i32 @blk_rq_pos(%struct.request* %25)
  %27 = call i64 @blk_rq_get_max_sectors(%struct.request* %24, i32 %26)
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %61

30:                                               ; preds = %18
  %31 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = call i32 @rq_qos_merge(%struct.request_queue* %31, %struct.request* %32, %struct.bio* %33)
  %35 = load %struct.bio*, %struct.bio** %7, align 8
  %36 = load %struct.request*, %struct.request** %6, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 2
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  store %struct.bio* %35, %struct.bio** %39, align 8
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 2
  store %struct.bio* %40, %struct.bio** %42, align 8
  %43 = load %struct.bio*, %struct.bio** %7, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load i16, i16* %8, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = trunc i32 %55 to i16
  %57 = load %struct.request*, %struct.request** %6, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  store i16 %56, i16* %58, align 8
  %59 = load %struct.request*, %struct.request** %6, align 8
  %60 = call i32 @blk_account_io_start(%struct.request* %59, i32 0)
  store i32 1, i32* %4, align 4
  br label %65

61:                                               ; preds = %29, %17
  %62 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %63 = load %struct.request*, %struct.request** %6, align 8
  %64 = call i32 @req_set_nomerge(%struct.request_queue* %62, %struct.request* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %30
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local zeroext i16 @blk_rq_nr_discard_segments(%struct.request*) #1

declare dso_local zeroext i16 @queue_max_discard_segments(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @blk_rq_get_max_sectors(%struct.request*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @rq_qos_merge(%struct.request_queue*, %struct.request*, %struct.bio*) #1

declare dso_local i32 @blk_account_io_start(%struct.request*, i32) #1

declare dso_local i32 @req_set_nomerge(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
