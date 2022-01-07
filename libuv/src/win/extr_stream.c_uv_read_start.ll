; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_read_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UV_HANDLE_READING = common dso_local global i32 0, align 4
@UV_EALREADY = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_read_start(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UV_HANDLE_READING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @UV_EALREADY, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %17
  %27 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %49 [
    i32 129, label %31
    i32 130, label %37
    i32 128, label %43
  ]

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = bitcast %struct.TYPE_3__* %32 to i32*
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @uv_tcp_read_start(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = bitcast %struct.TYPE_3__* %38 to i32*
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @uv_pipe_read_start(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %51

43:                                               ; preds = %26
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = bitcast %struct.TYPE_3__* %44 to i32*
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @uv_tty_read_start(i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %51

49:                                               ; preds = %26
  %50 = call i32 @assert(i32 0)
  br label %51

51:                                               ; preds = %49, %43, %37, %31
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @uv_translate_sys_error(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %24, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @uv_tcp_read_start(i32*, i32, i32) #1

declare dso_local i32 @uv_pipe_read_start(i32*, i32, i32) #1

declare dso_local i32 @uv_tty_read_start(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
