; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_git_transport_local.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_git_transport_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GIT_TRANSPORT_VERSION = common dso_local global i32 0, align 4
@local_set_callbacks = common dso_local global i32 0, align 4
@local_connect = common dso_local global i32 0, align 4
@local_negotiate_fetch = common dso_local global i32 0, align 4
@local_download_pack = common dso_local global i32 0, align 4
@local_push = common dso_local global i32 0, align 4
@local_close = common dso_local global i32 0, align 4
@local_free = common dso_local global i32 0, align 4
@local_ls = common dso_local global i32 0, align 4
@local_is_connected = common dso_local global i32 0, align 4
@local_read_flags = common dso_local global i32 0, align 4
@local_cancel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transport_local(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @GIT_UNUSED(i8* %10)
  %12 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 64)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %13)
  %15 = load i32, i32* @GIT_TRANSPORT_VERSION, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 11
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @local_set_callbacks, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 10
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @local_connect, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 9
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @local_negotiate_fetch, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 8
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @local_download_pack, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @local_push, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @local_close, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @local_free, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @local_ls, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @local_is_connected, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @local_read_flags, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @local_cancel, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i32 @git_vector_init(i32* %64, i32 0, i32* null)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = call i32 @git__free(%struct.TYPE_7__* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %3
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = bitcast %struct.TYPE_7__* %75 to i32*
  %77 = load i32**, i32*** %5, align 8
  store i32* %76, i32** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %67
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i32 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
