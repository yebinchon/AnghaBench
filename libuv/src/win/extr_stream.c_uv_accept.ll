; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_accept.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_stream.c_uv_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_accept(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %21 [
    i32 128, label %10
    i32 129, label %16
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = bitcast %struct.TYPE_5__* %11 to i32*
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to i32*
  %15 = call i32 @uv_tcp_accept(i32* %12, i32* %14)
  store i32 %15, i32* %5, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = bitcast %struct.TYPE_5__* %17 to i32*
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @uv_pipe_accept(i32* %18, %struct.TYPE_5__* %19)
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @assert(i32 0)
  br label %23

23:                                               ; preds = %21, %16, %10
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @uv_translate_sys_error(i32 %24)
  ret i32 %25
}

declare dso_local i32 @uv_tcp_accept(i32*, i32*) #1

declare dso_local i32 @uv_pipe_accept(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
