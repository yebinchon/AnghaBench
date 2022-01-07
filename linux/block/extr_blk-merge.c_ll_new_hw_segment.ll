; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_ll_new_hw_segment.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_ll_new_hw_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.bio*, i32)* @ll_new_hw_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_new_hw_segment(%struct.request* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @queue_max_segments(i32 %16)
  %18 = icmp sgt i64 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %36

20:                                               ; preds = %3
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @blk_integrity_merge_bio(i32 %23, %struct.request* %24, %struct.bio* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  store i32 1, i32* %4, align 4
  br label %42

36:                                               ; preds = %28, %19
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = call i32 @req_set_nomerge(i32 %39, %struct.request* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @queue_max_segments(i32) #1

declare dso_local i32 @blk_integrity_merge_bio(i32, %struct.request*, %struct.bio*) #1

declare dso_local i32 @req_set_nomerge(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
