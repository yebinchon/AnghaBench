; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv__work_cancel.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv__work_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.uv__work = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@mutex = common dso_local global i32 0, align 4
@UV_EBUSY = common dso_local global i32 0, align 4
@uv__cancelled = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, %struct.uv__work*)* @uv__work_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__work_cancel(%struct.TYPE_5__* %0, i32* %1, %struct.uv__work* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.uv__work*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.uv__work* %2, %struct.uv__work** %7, align 8
  %9 = call i32 @uv_mutex_lock(i32* @mutex)
  %10 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %11 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @uv_mutex_lock(i32* %13)
  %15 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %16 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %15, i32 0, i32 0
  %17 = call i32 @QUEUE_EMPTY(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %21 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %31 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %30, i32 0, i32 0
  %32 = call i32 @QUEUE_REMOVE(i32* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %35 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @uv_mutex_unlock(i32* %37)
  %39 = call i32 @uv_mutex_unlock(i32* @mutex)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @UV_EBUSY, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %33
  %45 = load i32*, i32** @uv__cancelled, align 8
  %46 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %47 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @uv_mutex_lock(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %54 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %53, i32 0, i32 0
  %55 = call i32 @QUEUE_INSERT_TAIL(i32* %52, i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call i32 @uv_async_send(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @uv_mutex_unlock(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %44, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @uv_async_send(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
