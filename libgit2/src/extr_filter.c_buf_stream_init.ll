; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_buf_stream_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_buf_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_stream = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@buf_stream_write = common dso_local global i32 0, align 4
@buf_stream_close = common dso_local global i32 0, align 4
@buf_stream_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_stream*, i32*)* @buf_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_stream_init(%struct.buf_stream* %0, i32* %1) #0 {
  %3 = alloca %struct.buf_stream*, align 8
  %4 = alloca i32*, align 8
  store %struct.buf_stream* %0, %struct.buf_stream** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.buf_stream*, %struct.buf_stream** %3, align 8
  %6 = call i32 @memset(%struct.buf_stream* %5, i32 0, i32 24)
  %7 = load i32, i32* @buf_stream_write, align 4
  %8 = load %struct.buf_stream*, %struct.buf_stream** %3, align 8
  %9 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @buf_stream_close, align 4
  %12 = load %struct.buf_stream*, %struct.buf_stream** %3, align 8
  %13 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @buf_stream_free, align 4
  %16 = load %struct.buf_stream*, %struct.buf_stream** %3, align 8
  %17 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.buf_stream*, %struct.buf_stream** %3, align 8
  %21 = getelementptr inbounds %struct.buf_stream, %struct.buf_stream* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_buf_clear(i32* %22)
  ret void
}

declare dso_local i32 @memset(%struct.buf_stream*, i32, i32) #1

declare dso_local i32 @git_buf_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
