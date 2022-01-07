; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_loop.c_uv__loop_close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_loop.c_uv__loop_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"thread pool work queue not empty!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv__loop_close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @uv__signal_loop_cleanup(%struct.TYPE_7__* %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @uv__platform_loop_delete(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @uv__async_stop(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @uv__close(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @uv__close(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  %35 = call i32 @uv_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  %38 = call i32 @QUEUE_EMPTY(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i1 [ false, %32 ], [ true, %40 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = call i32 @uv__has_active_reqs(%struct.TYPE_7__* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  %53 = call i32 @uv_mutex_unlock(i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  %56 = call i32 @uv_mutex_destroy(i32* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 7
  %59 = call i32 @uv_rwlock_destroy(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @uv__free(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @uv__signal_loop_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @uv__platform_loop_delete(%struct.TYPE_7__*) #1

declare dso_local i32 @uv__async_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @uv__has_active_reqs(%struct.TYPE_7__*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @uv_mutex_destroy(i32*) #1

declare dso_local i32 @uv_rwlock_destroy(i32*) #1

declare dso_local i32 @uv__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
