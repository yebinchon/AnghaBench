; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_filter_stream_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_compress_filter_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_stream = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@compress_stream_write = common dso_local global i32 0, align 4
@compress_stream_close = common dso_local global i32 0, align 4
@compress_stream_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, i8**, i32*, i32*)* @compress_filter_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_filter_stream_init(i32** %0, i8** %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.compress_stream*, align 8
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = call %struct.compress_stream* @git__calloc(i32 1, i32 32)
  store %struct.compress_stream* %12, %struct.compress_stream** %11, align 8
  %13 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %14 = call i32 @cl_assert(%struct.compress_stream* %13)
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @GIT_UNUSED(i8** %15)
  %17 = load i8**, i8*** %8, align 8
  %18 = call i32 @GIT_UNUSED(i8** %17)
  %19 = load i32, i32* @compress_stream_write, align 4
  %20 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %21 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @compress_stream_close, align 4
  %24 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %25 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @compress_stream_free, align 4
  %28 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %29 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %33 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @git_filter_source_mode(i32* %34)
  %36 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %37 = getelementptr inbounds %struct.compress_stream, %struct.compress_stream* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.compress_stream*, %struct.compress_stream** %11, align 8
  %39 = bitcast %struct.compress_stream* %38 to i32*
  %40 = load i32**, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  ret i32 0
}

declare dso_local %struct.compress_stream* @git__calloc(i32, i32) #1

declare dso_local i32 @cl_assert(%struct.compress_stream*) #1

declare dso_local i32 @GIT_UNUSED(i8**) #1

declare dso_local i32 @git_filter_source_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
