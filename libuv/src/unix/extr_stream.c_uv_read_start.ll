; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_read_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@UV_TCP = common dso_local global i64 0, align 8
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_TTY = common dso_local global i64 0, align 8
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@UV_HANDLE_READING = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_read_start(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UV_TCP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UV_NAMED_PIPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UV_TTY, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %13, %3
  %26 = phi i1 [ true, %13 ], [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @UV_EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %45, i32* %4, align 4
  br label %76

46:                                               ; preds = %37
  %47 = load i32, i32* @UV_HANDLE_READING, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = call i64 @uv__stream_fd(%struct.TYPE_6__* %52)
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* @POLLIN, align 4
  %71 = call i32 @uv__io_start(i32 %67, i32* %69, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = call i32 @uv__handle_start(%struct.TYPE_6__* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_6__* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %46, %44, %35
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv__stream_fd(%struct.TYPE_6__*) #1

declare dso_local i32 @uv__io_start(i32, i32*, i32) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_6__*) #1

declare dso_local i32 @uv__stream_osx_interrupt_select(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
