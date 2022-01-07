; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/uvtee/extr_main.c_read_stdin.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/uvtee/extr_main.c_read_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@UV_EOF = common dso_local global i64 0, align 8
@stdin_pipe = common dso_local global i32 0, align 4
@stdout_pipe = common dso_local global i32 0, align 4
@file_pipe = common dso_local global i32 0, align 4
@on_stdout_write = common dso_local global i32 0, align 4
@on_file_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_stdin(i32* %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @UV_EOF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @uv_close(i32* @stdin_pipe, i32* null)
  %15 = call i32 @uv_close(i32* @stdout_pipe, i32* null)
  %16 = call i32 @uv_close(i32* @file_pipe, i32* null)
  br label %17

17:                                               ; preds = %13, %9
  br label %35

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = load i32, i32* @on_stdout_write, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @write_data(i32* @stdout_pipe, i64 %22, i64 %26, i32 %24)
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = load i32, i32* @on_file_write, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @write_data(i32* @file_pipe, i64 %28, i64 %32, i32 %30)
  br label %34

34:                                               ; preds = %21, %18
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @free(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @write_data(i32*, i64, i64, i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
