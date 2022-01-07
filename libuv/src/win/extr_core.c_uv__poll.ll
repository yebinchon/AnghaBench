; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__poll.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"GetQueuedCompletionStatusEx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @uv__poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__poll(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x %struct.TYPE_9__], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %96, %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @GetQueuedCompletionStatusEx(i32 %20, %struct.TYPE_9__* %21, i32 %23, i64* %8, i64 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %7, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %7, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @uv_overlapped_to_req(i64 %44)
  store i32* %45, i32** %6, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @uv_insert_pending_req(%struct.TYPE_8__* %46, i32* %47)
  br label %49

49:                                               ; preds = %40, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i32 @uv_update_time(%struct.TYPE_8__* %54)
  br label %95

56:                                               ; preds = %17
  %57 = call i64 (...) @GetLastError()
  %58 = load i64, i64* @WAIT_TIMEOUT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 @uv_fatal_error(i64 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %94

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = call i32 @uv_update_time(%struct.TYPE_8__* %67)
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %66
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  store i64 %79, i64* %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, 1
  %85 = shl i32 1, %84
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 0, %86 ]
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %4, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %4, align 8
  br label %96

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %93, %60
  br label %95

95:                                               ; preds = %94, %53
  br label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %17

99:                                               ; preds = %95
  ret void
}

declare dso_local i64 @GetQueuedCompletionStatusEx(i32, %struct.TYPE_9__*, i32, i64*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32* @uv_overlapped_to_req(i64) #1

declare dso_local i32 @uv_insert_pending_req(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @uv_update_time(%struct.TYPE_8__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @uv_fatal_error(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
