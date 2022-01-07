; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/multi-echo-server/extr_worker.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/multi-echo-server/extr_worker.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@queue = common dso_local global i32 0, align 4
@alloc_buffer = common dso_local global i32 0, align 4
@on_new_connection = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @uv_default_loop()
  store i32 %2, i32* @loop, align 4
  %3 = load i32, i32* @loop, align 4
  %4 = call i32 @uv_pipe_init(i32 %3, i32* @queue, i32 1)
  %5 = call i32 @uv_pipe_open(i32* @queue, i32 0)
  %6 = load i32, i32* @alloc_buffer, align 4
  %7 = load i32, i32* @on_new_connection, align 4
  %8 = call i32 @uv_read_start(i32* @queue, i32 %6, i32 %7)
  %9 = load i32, i32* @loop, align 4
  %10 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %11 = call i32 @uv_run(i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_pipe_open(i32*, i32) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
