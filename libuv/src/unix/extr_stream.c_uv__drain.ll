; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__drain.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32)* }

@POLLOUT = common dso_local global i32 0, align 4
@UV_HANDLE_SHUTTING = common dso_local global i32 0, align 4
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@UV_HANDLE_SHUT = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @uv__drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__drain(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %7 = call %struct.TYPE_11__* @QUEUE_EMPTY(i32* %6)
  %8 = call i32 @assert(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* @POLLOUT, align 4
  %15 = call i32 @uv__io_stop(i32 %11, i32* %13, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UV_HANDLE_SHUTTING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %89, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @UV_HANDLE_SHUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %89, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = call i32 @assert(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %3, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %47, align 8
  %48 = load i32, i32* @UV_HANDLE_SHUTTING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @uv__req_unregister(i32 %56, %struct.TYPE_11__* %57)
  store i32 0, i32* %4, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = call i32 @uv__stream_fd(%struct.TYPE_10__* %59)
  %61 = load i32, i32* @SHUT_WR, align 4
  %62 = call i64 @shutdown(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %38
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @UV__ERR(i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %38
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @UV_HANDLE_SHUT, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.TYPE_11__*, i32)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 %84(%struct.TYPE_11__* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %31, %24, %1
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @uv__io_stop(i32, i32*, i32) #1

declare dso_local i32 @uv__stream_osx_interrupt_select(%struct.TYPE_10__*) #1

declare dso_local i32 @uv__req_unregister(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @uv__stream_fd(%struct.TYPE_10__*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
