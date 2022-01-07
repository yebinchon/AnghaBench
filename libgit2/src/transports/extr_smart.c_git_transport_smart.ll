; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart.c_git_transport_smart.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart.c_git_transport_smart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 (i32*, %struct.TYPE_9__*, i32)*, i32, i32 }

@GIT_TRANSPORT_VERSION = common dso_local global i32 0, align 4
@git_smart__set_callbacks = common dso_local global i32 0, align 4
@git_smart__set_custom_headers = common dso_local global i32 0, align 4
@git_smart__connect = common dso_local global i32 0, align 4
@git_smart__close = common dso_local global i32 0, align 4
@git_smart__free = common dso_local global i32 0, align 4
@git_smart__negotiate_fetch = common dso_local global i32 0, align 4
@git_smart__download_pack = common dso_local global i32 0, align 4
@git_smart__push = common dso_local global i32 0, align 4
@git_smart__ls = common dso_local global i32 0, align 4
@git_smart__is_connected = common dso_local global i32 0, align 4
@git_smart__read_flags = common dso_local global i32 0, align 4
@git_smart__cancel = common dso_local global i32 0, align 4
@ref_name_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transport_smart(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %116

15:                                               ; preds = %3
  %16 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 80)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %17)
  %19 = load i32, i32* @GIT_TRANSPORT_VERSION, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 12
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @git_smart__set_callbacks, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 11
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @git_smart__set_custom_headers, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 10
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @git_smart__connect, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @git_smart__close, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @git_smart__free, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @git_smart__negotiate_fetch, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @git_smart__download_pack, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @git_smart__push, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @git_smart__ls, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @git_smart__is_connected, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @git_smart__read_flags, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @git_smart__cancel, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* @ref_name_cmp, align 4
  %82 = call i64 @git_vector_init(i32* %80, i32 16, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %15
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = call i32 @git__free(%struct.TYPE_7__* %85)
  store i32 -1, i32* %4, align 4
  br label %116

87:                                               ; preds = %15
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* @ref_name_cmp, align 4
  %91 = call i64 @git_vector_init(i32* %89, i32 16, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = call i32 @git__free(%struct.TYPE_7__* %94)
  store i32 -1, i32* %4, align 4
  br label %116

96:                                               ; preds = %87
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64 (i32*, %struct.TYPE_9__*, i32)*, i64 (i32*, %struct.TYPE_9__*, i32)** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 %99(i32* %101, %struct.TYPE_9__* %103, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = call i32 @git__free(%struct.TYPE_7__* %110)
  store i32 -1, i32* %4, align 4
  br label %116

112:                                              ; preds = %96
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = bitcast %struct.TYPE_7__* %113 to i32*
  %115 = load i32**, i32*** %5, align 8
  store i32* %114, i32** %115, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %109, %93, %84, %14
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
