; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/status/extr_events.c_events_status_per_thread.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/status/extr_events.c_events_status_per_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64* }
%struct.TYPE_6__ = type { i64 }
%struct.st_events_status_ctx_t = type { i32, i32, i32, i32*, i32, i32* }

@H2O_STATUS_ERROR_MAX = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_9__*)* @events_status_per_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @events_status_per_thread(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.st_events_status_ctx_t*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.st_events_status_ctx_t*
  store %struct.st_events_status_ctx_t* %8, %struct.st_events_status_ctx_t** %6, align 8
  %9 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %10 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @H2O_STATUS_ERROR_MAX, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %24 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %22
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %16
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %41 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %68, %35
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @H2O_HTTP2_ERROR_MAX, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %60 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %58
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %78 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %89 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load %struct.st_events_status_ctx_t*, %struct.st_events_status_ctx_t** %6, align 8
  %95 = getelementptr inbounds %struct.st_events_status_ctx_t, %struct.st_events_status_ctx_t* %94, i32 0, i32 0
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
