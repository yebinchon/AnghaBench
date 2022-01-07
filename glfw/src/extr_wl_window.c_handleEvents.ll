; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_handleEvents.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_handleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.wl_display* }
%struct.TYPE_6__ = type { i32 }
%struct.wl_display = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.pollfd = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@GLFW_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handleEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleEvents(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl_display*, align 8
  %4 = alloca [3 x %struct.pollfd], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load %struct.wl_display*, %struct.wl_display** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 7), align 8
  store %struct.wl_display* %9, %struct.wl_display** %3, align 8
  %10 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  %12 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %13 = call i32 @wl_display_get_fd(%struct.wl_display* %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  %15 = load i32, i32* @POLLIN, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i64 1
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 6), align 8
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 1
  %21 = load i32, i32* @POLLIN, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i64 1
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 1
  %27 = load i32, i32* @POLLIN, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 2
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %33, %1
  %30 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %31 = call i64 @wl_display_prepare_read(%struct.wl_display* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %35 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %34)
  br label %29

36:                                               ; preds = %29
  %37 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %38 = call i64 @wl_display_flush(%struct.wl_display* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EAGAIN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 1), align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %8, align 8
  br label %46

46:                                               ; preds = %49, %44
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = call i32 @_glfwInputWindowCloseRequest(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %8, align 8
  br label %46

55:                                               ; preds = %46
  %56 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %57 = call i32 @wl_display_cancel_read(%struct.wl_display* %56)
  br label %127

58:                                               ; preds = %40, %36
  %59 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %4, i64 0, i64 0
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @poll(%struct.pollfd* %59, i32 3, i32 %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %58
  %64 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %4, i64 0, i64 0
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @POLLIN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %72 = call i32 @wl_display_read_events(%struct.wl_display* %71)
  %73 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %74 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %73)
  br label %78

75:                                               ; preds = %63
  %76 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %77 = call i32 @wl_display_cancel_read(%struct.wl_display* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %4, i64 0, i64 1
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @POLLIN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %78
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 6), align 8
  %87 = call i32 @read(i32 %86, i64* %6, i32 8)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 8
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %127

91:                                               ; preds = %85
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 5), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 4), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 3), align 4
  %100 = load i32, i32* @GLFW_REPEAT, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %102 = call i32 @_glfwInputKey(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %92

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %78
  %108 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %4, i64 0, i64 2
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @POLLIN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 4
  %116 = call i32 @read(i32 %115, i64* %6, i32 8)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 8
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %127

120:                                              ; preds = %114
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %122 = call i32 @incrementCursorImage(i32 %121)
  br label %123

123:                                              ; preds = %120, %107
  br label %127

124:                                              ; preds = %58
  %125 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %126 = call i32 @wl_display_cancel_read(%struct.wl_display* %125)
  br label %127

127:                                              ; preds = %55, %90, %119, %124, %123
  ret void
}

declare dso_local i32 @wl_display_get_fd(%struct.wl_display*) #1

declare dso_local i64 @wl_display_prepare_read(%struct.wl_display*) #1

declare dso_local i32 @wl_display_dispatch_pending(%struct.wl_display*) #1

declare dso_local i64 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @_glfwInputWindowCloseRequest(%struct.TYPE_8__*) #1

declare dso_local i32 @wl_display_cancel_read(%struct.wl_display*) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @wl_display_read_events(%struct.wl_display*) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @_glfwInputKey(i32, i32, i32, i32, i32) #1

declare dso_local i32 @incrementCursorImage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
