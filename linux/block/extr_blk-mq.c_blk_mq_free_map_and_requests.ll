; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_map_and_requests.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_map_and_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tag_set*, i32)* @blk_mq_free_map_and_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %11 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %9
  %19 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set* %19, i32* %26, i32 %27)
  %29 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %30 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @blk_mq_free_rq_map(i32* %35)
  %37 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %38 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %18, %9, %2
  ret void
}

declare dso_local i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set*, i32*, i32) #1

declare dso_local i32 @blk_mq_free_rq_map(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
