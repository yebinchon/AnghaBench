; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_write2.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_write2(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, %struct.TYPE_8__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @uv_write(i32* %22, %struct.TYPE_8__* %23, i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %64

28:                                               ; preds = %6
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UV_NAMED_PIPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = bitcast %struct.TYPE_8__* %35 to %struct.TYPE_9__*
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @UV_EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @UV_EPIPE, align 4
  store i32 %50, i32* %7, align 4
  br label %64

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = bitcast %struct.TYPE_8__* %55 to %struct.TYPE_9__*
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @uv__pipe_write(i32* %53, i32* %54, %struct.TYPE_9__* %56, i32* %57, i32 %58, %struct.TYPE_8__* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @uv_translate_sys_error(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %49, %40, %21
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @uv_write(i32*, %struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @uv__pipe_write(i32*, i32*, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
