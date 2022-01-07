; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_add_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Queue not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  queue = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_event(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load i32, i32* @verbosity, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  store i32 0, i32* %7, align 4
  br label %71

24:                                               ; preds = %6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @verbosity, align 4
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = call %struct.TYPE_9__* @event_malloc(i32 %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %14, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @memcpy(i32 %47, i8* %48, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %54 = call i32 @queue_add(%struct.TYPE_8__* %52, %struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = call i32 @process_user_query_queue(%struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %41, %29
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @redirect_news(i32 %63, i32 %64, i32 %65, i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @event_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @queue_add(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @process_user_query_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @redirect_news(i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
