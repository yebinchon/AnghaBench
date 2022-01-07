; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_alloc_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_alloc_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_flush_queue = type { i32, i32*, i8*, i32 }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blk_flush_queue* @blk_alloc_flush_queue(%struct.request_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_flush_queue*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_flush_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @kzalloc_node(i32 32, i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.blk_flush_queue*
  store %struct.blk_flush_queue* %15, %struct.blk_flush_queue** %10, align 8
  %16 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %17 = icmp ne %struct.blk_flush_queue* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %57

19:                                               ; preds = %4
  %20 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %21 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 (...) @cache_line_size()
  %27 = call i32 @round_up(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @kzalloc_node(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %33 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %35 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %19
  br label %54

39:                                               ; preds = %19
  %40 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %41 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %46 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %51 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %50, i32 0, i32 0
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  store %struct.blk_flush_queue* %53, %struct.blk_flush_queue** %5, align 8
  br label %58

54:                                               ; preds = %38
  %55 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %10, align 8
  %56 = call i32 @kfree(%struct.blk_flush_queue* %55)
  br label %57

57:                                               ; preds = %54, %18
  store %struct.blk_flush_queue* null, %struct.blk_flush_queue** %5, align 8
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %5, align 8
  ret %struct.blk_flush_queue* %59
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.blk_flush_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
