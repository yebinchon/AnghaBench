; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijkthreadpool.c_ijk_threadpool_thread.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijkthreadpool.c_ijk_threadpool_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 (i32, i32)* }
%struct.TYPE_5__ = type { i32, i32, i32 (i32, i32)* }

@IJK_IMMEDIATE_SHUTDOWN = common dso_local global i64 0, align 8
@IJK_LEISURELY_SHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ijk_threadpool_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ijk_threadpool_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  br label %7

7:                                                ; preds = %48, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %24, %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i1 [ false, %11 ], [ %21, %16 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = call i32 @pthread_cond_wait(i32* %26, i32* %28)
  br label %11

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IJK_IMMEDIATE_SHUTDOWN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IJK_LEISURELY_SHUTDOWN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %30
  br label %104

48:                                               ; preds = %42, %36
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 (i32, i32)* %57, i32 (i32, i32)** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = urem i64 %82, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %98(i32 %100, i32 %102)
  br label %7

104:                                              ; preds = %47
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = call i32 @pthread_mutex_unlock(i32* %110)
  %112 = call i32 @pthread_exit(i32* null)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
