; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_git_proto_stream_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_git_proto_stream_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__, i32, i32 }

@git_proto_stream_read = common dso_local global i32 0, align 4
@git_proto_stream_write = common dso_local global i32 0, align 4
@git_proto_stream_free = common dso_local global i32 0, align 4
@GIT_STREAM_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"git_stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i8*, %struct.TYPE_10__**)* @git_proto_stream_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_proto_stream_alloc(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_10__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %13, align 8
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %16 = icmp ne %struct.TYPE_10__** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %70

18:                                               ; preds = %6
  %19 = call %struct.TYPE_11__* @git__calloc(i32 1, i32 40)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %14, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store i32* %23, i32** %26, align 8
  %27 = load i32, i32* @git_proto_stream_read, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @git_proto_stream_write, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @git_proto_stream_free, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @git__strdup(i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %18
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = call i32 @git__free(%struct.TYPE_11__* %51)
  store i32 -1, i32* %7, align 4
  br label %70

53:                                               ; preds = %18
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @git_socket_stream_new(i32* %55, i8* %56, i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  br label %70

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GIT_STREAM_VERSION, align 4
  %66 = call i32 @GIT_ERROR_CHECK_VERSION(i32 %64, i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %69, align 8
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %61, %60, %50, %17
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_11__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__*) #1

declare dso_local i32 @git__strdup(i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_11__*) #1

declare dso_local i64 @git_socket_stream_new(i32*, i8*, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
