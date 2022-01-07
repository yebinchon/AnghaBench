; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bio_write_zeroes_split.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bio_write_zeroes_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i32 }
%struct.bio_set = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.request_queue*, %struct.bio*, %struct.bio_set*, i32*)* @blk_bio_write_zeroes_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @blk_bio_write_zeroes_split(%struct.request_queue* %0, %struct.bio* %1, %struct.bio_set* %2, i32* %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio_set*, align 8
  %9 = alloca i32*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store %struct.bio_set* %2, %struct.bio_set** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.bio* null, %struct.bio** %5, align 8
  br label %35

17:                                               ; preds = %4
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = call i64 @bio_sectors(%struct.bio* %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.bio* null, %struct.bio** %5, align 8
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @GFP_NOIO, align 4
  %33 = load %struct.bio_set*, %struct.bio_set** %8, align 8
  %34 = call %struct.bio* @bio_split(%struct.bio* %27, i64 %31, i32 %32, %struct.bio_set* %33)
  store %struct.bio* %34, %struct.bio** %5, align 8
  br label %35

35:                                               ; preds = %26, %25, %16
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %36
}

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i64, i32, %struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
