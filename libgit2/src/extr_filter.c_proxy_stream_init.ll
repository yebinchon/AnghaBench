; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_proxy_stream_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_proxy_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_stream = type { i8**, i32, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@proxy_stream_write = common dso_local global i32 0, align 4
@proxy_stream_close = common dso_local global i32 0, align 4
@proxy_stream_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8**, i32*, i32*)* @proxy_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_stream_init(i32** %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.proxy_stream*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = call %struct.proxy_stream* @git__calloc(i32 1, i32 64)
  store %struct.proxy_stream* %14, %struct.proxy_stream** %13, align 8
  %15 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %16 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.proxy_stream* %15)
  %17 = load i32, i32* @proxy_stream_write, align 4
  %18 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %19 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @proxy_stream_close, align 4
  %22 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %23 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @proxy_stream_free, align 4
  %26 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %27 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %31 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %34 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %33, i32 0, i32 0
  store i8** %32, i8*** %34, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %37 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %40 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %6
  %44 = load i32*, i32** %9, align 8
  br label %48

45:                                               ; preds = %6
  %46 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %47 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %46, i32 0, i32 1
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32* [ %44, %43 ], [ %47, %45 ]
  %50 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %51 = getelementptr inbounds %struct.proxy_stream, %struct.proxy_stream* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @git_buf_clear(i32* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.proxy_stream*, %struct.proxy_stream** %13, align 8
  %59 = bitcast %struct.proxy_stream* %58 to i32*
  %60 = load i32**, i32*** %7, align 8
  store i32* %59, i32** %60, align 8
  ret i32 0
}

declare dso_local %struct.proxy_stream* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.proxy_stream*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
