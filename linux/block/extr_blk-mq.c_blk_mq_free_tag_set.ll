; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_free_tag_set(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.blk_mq_tag_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %8 = call i32 @nr_hw_queues(%struct.blk_mq_tag_set* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %5

17:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %26 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %46 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @nr_hw_queues(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
