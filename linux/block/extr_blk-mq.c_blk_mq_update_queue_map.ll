; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_update_queue_map.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_update_queue_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @blk_mq_update_queue_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.blk_mq_tag_set*)**
  %10 = load i32 (%struct.blk_mq_tag_set*)*, i32 (%struct.blk_mq_tag_set*)** %9, align 8
  %11 = icmp ne i32 (%struct.blk_mq_tag_set*)* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = call i32 (...) @is_kdump_kernel()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @blk_mq_clear_mq_map(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.blk_mq_tag_set*)**
  %39 = load i32 (%struct.blk_mq_tag_set*)*, i32 (%struct.blk_mq_tag_set*)** %38, align 8
  %40 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %41 = call i32 %39(%struct.blk_mq_tag_set* %40)
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %12, %1
  %43 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @blk_mq_map_queues(i32* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %33
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @is_kdump_kernel(...) #1

declare dso_local i32 @blk_mq_clear_mq_map(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_mq_map_queues(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
