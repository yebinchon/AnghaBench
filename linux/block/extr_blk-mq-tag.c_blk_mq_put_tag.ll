; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_put_tag.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_put_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_tags = type { i32, i32, i32, i32 }
%struct.blk_mq_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_put_tag(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_tags* %1, %struct.blk_mq_ctx* %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca %struct.blk_mq_tags*, align 8
  %7 = alloca %struct.blk_mq_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %5, align 8
  store %struct.blk_mq_tags* %1, %struct.blk_mq_tags** %6, align 8
  store %struct.blk_mq_ctx* %2, %struct.blk_mq_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @blk_mq_tag_is_reserved(%struct.blk_mq_tags* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %28 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %27, i32 0, i32 3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sbitmap_queue_clear(i32* %28, i32 %29, i32 %32)
  br label %49

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %37 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp uge i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %6, align 8
  %43 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %42, i32 0, i32 2
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sbitmap_queue_clear(i32* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @blk_mq_tag_is_reserved(%struct.blk_mq_tags*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sbitmap_queue_clear(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
