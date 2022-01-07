; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_ll_back_merge_fn.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_ll_back_merge_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll_back_merge_fn(%struct.request* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %6, align 8
  %10 = call i64 @req_gap_back_merge(%struct.request* %8, %struct.bio* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

13:                                               ; preds = %3
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = call i64 @blk_integrity_rq(%struct.request* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = call i64 @integrity_req_gap_back_merge(%struct.request* %18, %struct.bio* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %45

23:                                               ; preds = %17, %13
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = call i64 @blk_rq_sectors(%struct.request* %24)
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = call i64 @bio_sectors(%struct.bio* %26)
  %28 = add nsw i64 %25, %27
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = call i32 @blk_rq_pos(%struct.request* %30)
  %32 = call i64 @blk_rq_get_max_sectors(%struct.request* %29, i32 %31)
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = call i32 @req_set_nomerge(i32 %37, %struct.request* %38)
  store i32 0, i32* %4, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load %struct.request*, %struct.request** %5, align 8
  %42 = load %struct.bio*, %struct.bio** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ll_new_hw_segment(%struct.request* %41, %struct.bio* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %34, %22, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @req_gap_back_merge(%struct.request*, %struct.bio*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i64 @integrity_req_gap_back_merge(%struct.request*, %struct.bio*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @blk_rq_get_max_sectors(%struct.request*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @req_set_nomerge(i32, %struct.request*) #1

declare dso_local i32 @ll_new_hw_segment(%struct.request*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
