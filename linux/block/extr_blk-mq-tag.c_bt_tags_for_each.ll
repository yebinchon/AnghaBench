; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_tags_for_each.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_tags_for_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tags = type { i64 }
%struct.sbitmap_queue = type { i32 }
%struct.bt_tags_iter_data = type { i8*, i32, i32*, %struct.blk_mq_tags* }

@bt_tags_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tags*, %struct.sbitmap_queue*, i32*, i8*, i32)* @bt_tags_for_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_tags_for_each(%struct.blk_mq_tags* %0, %struct.sbitmap_queue* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.blk_mq_tags*, align 8
  %7 = alloca %struct.sbitmap_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bt_tags_iter_data, align 8
  store %struct.blk_mq_tags* %0, %struct.blk_mq_tags** %6, align 8
  store %struct.sbitmap_queue* %1, %struct.sbitmap_queue** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %11, i32 0, i32 1
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %11, i32 0, i32 2
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %11, i32 0, i32 3
  %19 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  store %struct.blk_mq_tags* %19, %struct.blk_mq_tags** %18, align 8
  %20 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %7, align 8
  %26 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %25, i32 0, i32 0
  %27 = load i32, i32* @bt_tags_iter, align 4
  %28 = call i32 @sbitmap_for_each_set(i32* %26, i32 %27, %struct.bt_tags_iter_data* %11)
  br label %29

29:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32 @sbitmap_for_each_set(i32*, i32, %struct.bt_tags_iter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
