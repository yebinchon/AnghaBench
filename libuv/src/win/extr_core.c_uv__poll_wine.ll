; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__poll_wine.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__poll_wine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GetQueuedCompletionStatus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @uv__poll_wine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__poll_wine(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %72, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @GetQueuedCompletionStatus(i32 %19, i64* %5, i32* %6, i32** %7, i64 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @uv_overlapped_to_req(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @uv_insert_pending_req(%struct.TYPE_5__* %27, i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i32 @uv_update_time(%struct.TYPE_5__* %30)
  br label %71

32:                                               ; preds = %16
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @WAIT_TIMEOUT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 @uv_fatal_error(i64 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %70

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = call i32 @uv_update_time(%struct.TYPE_5__* %43)
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %42
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  br label %63

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 0, %62 ]
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %4, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %4, align 8
  br label %72

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %24
  br label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %16

75:                                               ; preds = %71
  ret void
}

declare dso_local i32 @GetQueuedCompletionStatus(i32, i64*, i32*, i32**, i64) #1

declare dso_local i32* @uv_overlapped_to_req(i32*) #1

declare dso_local i32 @uv_insert_pending_req(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @uv_update_time(%struct.TYPE_5__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @uv_fatal_error(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
