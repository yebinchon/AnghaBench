; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/uvtee/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/uvtee/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@stdin_pipe = common dso_local global i32 0, align 4
@stdout_pipe = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@file_pipe = common dso_local global i32 0, align 4
@alloc_buffer = common dso_local global i32 0, align 4
@read_stdin = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @uv_default_loop()
  store i32 %8, i32* @loop, align 4
  %9 = load i32, i32* @loop, align 4
  %10 = call i32 @uv_pipe_init(i32 %9, i32* @stdin_pipe, i32 0)
  %11 = call i32 @uv_pipe_open(i32* @stdin_pipe, i32 0)
  %12 = load i32, i32* @loop, align 4
  %13 = call i32 @uv_pipe_init(i32 %12, i32* @stdout_pipe, i32 0)
  %14 = call i32 @uv_pipe_open(i32* @stdout_pipe, i32 1)
  %15 = load i32, i32* @loop, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @uv_fs_open(i32 %15, i32* %6, i8* %18, i32 %21, i32 420, i32* null)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @loop, align 4
  %24 = call i32 @uv_pipe_init(i32 %23, i32* @file_pipe, i32 0)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @uv_pipe_open(i32* @file_pipe, i32 %25)
  %27 = load i32, i32* @alloc_buffer, align 4
  %28 = load i32, i32* @read_stdin, align 4
  %29 = call i32 @uv_read_start(i32* @stdin_pipe, i32 %27, i32 %28)
  %30 = load i32, i32* @loop, align 4
  %31 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %32 = call i32 @uv_run(i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_pipe_open(i32*, i32) #1

declare dso_local i32 @uv_fs_open(i32, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
