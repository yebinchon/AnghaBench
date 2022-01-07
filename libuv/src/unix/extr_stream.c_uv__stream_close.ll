; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__stream_close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__*, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@uv__stream_osx_cb_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv__stream_close(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = call i32 @uv__io_close(i32 %7, %struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = call i32 @uv_read_stop(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = call i32 @uv__handle_stop(%struct.TYPE_11__* %13)
  %15 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %16 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STDERR_FILENO, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @uv__close(i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uv__close(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %81, %62
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @uv__close(i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %66

84:                                               ; preds = %66
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @uv__free(%struct.TYPE_13__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %90, align 8
  br label %91

91:                                               ; preds = %84, %57
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* @POLLIN, align 4
  %95 = load i32, i32* @POLLOUT, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @uv__io_active(%struct.TYPE_14__* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  ret void
}

declare dso_local i32 @uv__io_close(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @uv_read_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv__free(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__io_active(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
