; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_alloc_rq_maps.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_alloc_rq_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @__blk_mq_alloc_rq_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %39

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @blk_mq_free_rq_map(i32 %34)
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @__blk_mq_alloc_rq_map(%struct.blk_mq_tag_set*, i32) #1

declare dso_local i32 @blk_mq_free_rq_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
