; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_kqueue.c_uv_fs_event_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_kqueue.c_uv_fs_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32*, i64, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@uv__fs_event = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@uv__has_forked_with_cfrunloop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_event_start(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = call i64 @uv__is_active(%struct.TYPE_8__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @UV_EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %62

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32* @uv__strdup(i8* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %29, i32* %5, align 4
  br label %62

30:                                               ; preds = %16
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @O_RDONLY, align 4
  %35 = call i32 @open(i32* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @uv__free(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @UV__ERR(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %62

47:                                               ; preds = %30
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = call i32 @uv__handle_start(%struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* @uv__fs_event, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @uv__io_init(%struct.TYPE_9__* %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* @POLLIN, align 4
  %61 = call i32 @uv__io_start(i32 %57, %struct.TYPE_9__* %59, i32 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %47, %38, %28, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @uv__is_active(%struct.TYPE_8__*) #1

declare dso_local i32* @uv__strdup(i8*) #1

declare dso_local i32 @open(i32*, i32) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__io_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @uv__io_start(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
