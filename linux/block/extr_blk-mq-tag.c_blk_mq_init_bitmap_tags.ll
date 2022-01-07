; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_init_bitmap_tags.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_init_bitmap_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tags = type { i32, i32, i32, i32 }

@BLK_TAG_ALLOC_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_tags* (%struct.blk_mq_tags*, i32, i32)* @blk_mq_init_bitmap_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_tags* @blk_mq_init_bitmap_tags(%struct.blk_mq_tags* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_tags*, align 8
  %5 = alloca %struct.blk_mq_tags*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.blk_mq_tags* %0, %struct.blk_mq_tags** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %11 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %14 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BLK_TAG_ALLOC_RR, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %21, i32 0, i32 2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @bt_alloc(i32* %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %31 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %30, i32 0, i32 3
  %32 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %33 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @bt_alloc(i32* %31, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %42

40:                                               ; preds = %29
  %41 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  store %struct.blk_mq_tags* %41, %struct.blk_mq_tags** %4, align 8
  br label %49

42:                                               ; preds = %39
  %43 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %44 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %43, i32 0, i32 2
  %45 = call i32 @sbitmap_queue_free(i32* %44)
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  %48 = call i32 @kfree(%struct.blk_mq_tags* %47)
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %4, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  ret %struct.blk_mq_tags* %50
}

declare dso_local i64 @bt_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @sbitmap_queue_free(i32*) #1

declare dso_local i32 @kfree(%struct.blk_mq_tags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
