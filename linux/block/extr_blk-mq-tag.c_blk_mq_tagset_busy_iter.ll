; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_tagset_busy_iter.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_tagset_busy_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_tagset_busy_iter(%struct.blk_mq_tag_set* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %40, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %30 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @blk_mq_all_tag_busy_iter(i64 %35, i32* %36, i8* %37)
  br label %39

39:                                               ; preds = %28, %19, %14
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

declare dso_local i32 @blk_mq_all_tag_busy_iter(i64, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
