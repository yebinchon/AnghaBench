; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_write.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_EPIPE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_write(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @UV_EPIPE, align 4
  store i32 %24, i32* %6, align 4
  br label %62

25:                                               ; preds = %5
  %26 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %57 [
    i32 129, label %30
    i32 130, label %39
    i32 128, label %48
  ]

30:                                               ; preds = %25
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = bitcast %struct.TYPE_3__* %33 to i32*
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @uv_tcp_write(i32* %31, i32* %32, i32* %34, i32* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %59

39:                                               ; preds = %25
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = bitcast %struct.TYPE_3__* %42 to i32*
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @uv__pipe_write(i32* %40, i32* %41, i32* %43, i32* %44, i32 %45, i32* null, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %59

48:                                               ; preds = %25
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = bitcast %struct.TYPE_3__* %51 to i32*
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @uv_tty_write(i32* %49, i32* %50, i32* %52, i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %59

57:                                               ; preds = %25
  %58 = call i32 @assert(i32 0)
  br label %59

59:                                               ; preds = %57, %48, %39, %30
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @uv_translate_sys_error(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %23
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @uv_tcp_write(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uv__pipe_write(i32*, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @uv_tty_write(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
