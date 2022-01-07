; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_errors.c_git_error_state_capture.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_errors.c_git_error_state_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@GIT_GLOBAL = common dso_local global %struct.TYPE_11__* null, align 8
@g_git_oom_error = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_error_state_capture(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @GIT_GLOBAL, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @GIT_GLOBAL, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 16)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, @g_git_oom_error
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %18
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_git_oom_error, i32 0, i32 0), align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %51

45:                                               ; preds = %29
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @git_buf_detach(i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %18
  %53 = call i32 (...) @git_error_clear()
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @git_buf_detach(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
