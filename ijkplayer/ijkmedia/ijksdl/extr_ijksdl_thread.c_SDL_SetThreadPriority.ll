; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_thread.c_SDL_SetThreadPriority.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_thread.c_SDL_SetThreadPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"pthread_getschedparam() failed\00", align 1
@SDL_THREAD_PRIORITY_LOW = common dso_local global i64 0, align 8
@SDL_THREAD_PRIORITY_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"pthread_setschedparam() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_SetThreadPriority(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = call i32 (...) @pthread_self()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @pthread_getschedparam(i32 %10, i32* %5, %struct.sched_param* %4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @ALOGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SDL_THREAD_PRIORITY_LOW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @sched_get_priority_min(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %48

24:                                               ; preds = %15
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @SDL_THREAD_PRIORITY_HIGH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @sched_get_priority_max(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %4, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %47

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @sched_get_priority_min(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @sched_get_priority_max(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %40, %44
  %46 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %4, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %33, %28
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @pthread_setschedparam(i32 %49, i32 %50, %struct.sched_param* %4)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @ALOGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i64 @pthread_getschedparam(i32, i32*, %struct.sched_param*) #1

declare dso_local i32 @ALOGE(i8*) #1

declare dso_local i8* @sched_get_priority_min(i32) #1

declare dso_local i8* @sched_get_priority_max(i32) #1

declare dso_local i64 @pthread_setschedparam(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
