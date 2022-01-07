; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_mutex.c_SDL_CondWaitTimeout.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_mutex.c_SDL_CondWaitTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.timespec = type { i32, i64 }

@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SDL_MUTEX_TIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_CondWaitTimeout(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timespec, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %71

21:                                               ; preds = %17
  %22 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 1000
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 1000
  %34 = mul nsw i32 %33, 1000
  %35 = add nsw i32 %31, %34
  %36 = mul nsw i32 %35, 1000
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1000000000
  br i1 %40, label %41, label %48

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1000000000
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %21
  br label %49

49:                                               ; preds = %48, %62
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @pthread_cond_timedwait(i32* %51, i32* %53, %struct.timespec* %10)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %71

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EINTR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %49

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @SDL_MUTEX_TIMEDOUT, align 4
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %57, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
