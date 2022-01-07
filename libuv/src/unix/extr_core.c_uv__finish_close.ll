; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__finish_close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__finish_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (%struct.TYPE_5__*)*, i32 }

@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@UV_HANDLE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @uv__finish_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__finish_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UV_HANDLE_CLOSED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @UV_HANDLE_CLOSED, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %35 [
    i32 134, label %26
    i32 140, label %26
    i32 137, label %26
    i32 141, label %26
    i32 130, label %26
    i32 133, label %26
    i32 139, label %26
    i32 138, label %26
    i32 135, label %26
    i32 132, label %26
    i32 136, label %27
    i32 131, label %27
    i32 129, label %27
    i32 128, label %31
  ]

26:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %37

27:                                               ; preds = %1, %1, %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = bitcast %struct.TYPE_5__* %28 to i32*
  %30 = call i32 @uv__stream_destroy(i32* %29)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i32*
  %34 = call i32 @uv__udp_finish_close(i32* %33)
  br label %37

35:                                               ; preds = %1
  %36 = call i32 @assert(i32 0)
  br label %37

37:                                               ; preds = %35, %31, %27, %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = call i32 @uv__handle_unref(%struct.TYPE_5__* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = call i32 @QUEUE_REMOVE(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_5__*)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = call i32 %50(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %47, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__stream_destroy(i32*) #1

declare dso_local i32 @uv__udp_finish_close(i32*) #1

declare dso_local i32 @uv__handle_unref(%struct.TYPE_5__*) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
