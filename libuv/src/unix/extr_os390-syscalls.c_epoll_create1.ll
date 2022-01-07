; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_epoll_create1.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_epoll_create1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@once = common dso_local global i32 0, align 4
@epoll_init = common dso_local global i32 0, align 4
@global_epoll_lock = common dso_local global i32 0, align 4
@global_epoll_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @epoll_create1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.TYPE_8__* @uv__malloc(i32 24)
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %57

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @init_message_queue(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @maybe_resize(%struct.TYPE_8__* %14, i32 1)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %18, i32* %28, align 4
  %29 = load i32, i32* @POLLIN, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %29, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @epoll_init, align 4
  %51 = call i32 @uv_once(i32* @once, i32 %50)
  %52 = call i32 @uv_mutex_lock(i32* @global_epoll_lock)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @QUEUE_INSERT_TAIL(i32* @global_epoll_queue, i32* %54)
  %56 = call i32 @uv_mutex_unlock(i32* @global_epoll_lock)
  br label %57

57:                                               ; preds = %7, %1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %58
}

declare dso_local %struct.TYPE_8__* @uv__malloc(i32) #1

declare dso_local i32 @init_message_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @maybe_resize(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
