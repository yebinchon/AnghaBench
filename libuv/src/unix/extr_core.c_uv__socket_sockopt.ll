; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__socket_sockopt.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__socket_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i64 0, align 8
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_UDP = common dso_local global i64 0, align 8
@UV_ENOTSUP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__socket_sockopt(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @UV_EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UV_TCP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UV_NAMED_PIPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = bitcast %struct.TYPE_7__* %31 to i32*
  %33 = call i32 @uv__stream_fd(i32* %32)
  store i32 %33, i32* %9, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UV_UDP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = bitcast %struct.TYPE_7__* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @UV_ENOTSUP, align 4
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %30
  store i32 4, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SOL_SOCKET, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @getsockopt(i32 %54, i32 %55, i32 %56, i32* %57, i32* %10)
  store i32 %58, i32* %8, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SOL_SOCKET, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @setsockopt(i32 %60, i32 %61, i32 %62, i8* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %53
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @UV__ERR(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70, %46, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @uv__stream_fd(i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
