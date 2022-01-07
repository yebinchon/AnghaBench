; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_segment_map_sg_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_segment_map_sg_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32 }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, %struct.bio_vec*, %struct.scatterlist**)* @__blk_segment_map_sg_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_segment_map_sg_merge(%struct.request_queue* %0, %struct.bio_vec* %1, %struct.bio_vec* %2, %struct.scatterlist** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca %struct.scatterlist**, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %7, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %8, align 8
  store %struct.scatterlist** %3, %struct.scatterlist*** %9, align 8
  %11 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %12 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %16 = icmp ne %struct.scatterlist* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %27 = call i64 @queue_max_segment_size(%struct.request_queue* %26)
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %33 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %34 = call i32 @biovec_phys_mergeable(%struct.request_queue* %31, %struct.bio_vec* %32, %struct.bio_vec* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %40, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %39
  store i64 %44, i64* %42, align 8
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %36, %29, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @queue_max_segment_size(%struct.request_queue*) #1

declare dso_local i32 @biovec_phys_mergeable(%struct.request_queue*, %struct.bio_vec*, %struct.bio_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
