; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_news_queue.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_news_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@queues_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @get_news_queue(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @IS_UID(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_6__* @get_queue_by_alias(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %66

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @get_news_s(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_6__* @get_queue(i32 %19, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %66

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = call i64 (...) @dl_get_memory_used()
  %41 = load i32, i32* @queues_memory, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @queues_memory, align 4
  %45 = call i32* @dl_malloc(i32 4)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = call i64 (...) @dl_get_memory_used()
  %49 = load i32, i32* @queues_memory, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @queues_memory, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @treap_init(i32* %55)
  br label %57

57:                                               ; preds = %39, %34
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = call i32 @update_news(%struct.TYPE_6__* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %22
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %3, align 8
  br label %66

66:                                               ; preds = %64, %33, %15
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %67
}

declare dso_local i32 @IS_UID(i32) #1

declare dso_local %struct.TYPE_6__* @get_queue_by_alias(i32) #1

declare dso_local %struct.TYPE_6__* @get_queue(i32, i32) #1

declare dso_local i32 @get_news_s(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32 @treap_init(i32*) #1

declare dso_local i32 @update_news(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
