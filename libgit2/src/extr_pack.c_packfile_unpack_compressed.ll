; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_packfile_unpack_compressed.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_packfile_unpack_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.git_pack_file = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i64, i64, i32, i32, i32 }

@use_git_alloc = common dso_local global i32 0, align 4
@use_git_free = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@GIT_ERROR_ZLIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to init zlib stream on unpack\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@GIT_EBUFS = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error inflating zlib stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.git_pack_file*, i32**, i32*, i64, i32)* @packfile_unpack_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packfile_unpack_compressed(%struct.TYPE_9__* %0, %struct.git_pack_file* %1, i32** %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.git_pack_file*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.git_pack_file* %1, %struct.git_pack_file** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %19, i32 1)
  %21 = load i64, i64* %14, align 8
  %22 = call i8* @git__calloc(i32 1, i64 %21)
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %23)
  %25 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 48)
  %26 = load i8*, i8** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @use_git_alloc, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 6
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @use_git_free, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = call i32 @inflateInit(%struct.TYPE_8__* %16)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @Z_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load i8*, i8** %17, align 8
  %40 = call i32 @git__free(i8* %39)
  %41 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %42 = call i32 @git_error_set(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %120

43:                                               ; preds = %6
  br label %44

44:                                               ; preds = %93, %43
  %45 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %46 = load i32**, i32*** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %50 = call i8* @pack_window_open(%struct.git_pack_file* %45, i32** %46, i32 %48, i32* %49)
  store i8* %50, i8** %18, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @Z_FINISH, align 4
  %54 = call i32 @inflate(%struct.TYPE_8__* %16, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32**, i32*** %10, align 8
  %56 = call i32 @git_mwindow_close(i32** %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  br label %95

61:                                               ; preds = %44
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @Z_BUF_ERROR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8*, i8** %18, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = call i32 @inflateEnd(%struct.TYPE_8__* %16)
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @git__free(i8* %70)
  %72 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %72, i32* %7, align 4
  br label %120

73:                                               ; preds = %65, %61
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %79
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @Z_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @Z_BUF_ERROR, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ true, %85 ], [ %92, %89 ]
  br i1 %94, label %44, label %95

95:                                               ; preds = %93, %60
  %96 = call i32 @inflateEnd(%struct.TYPE_8__* %16)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @Z_STREAM_END, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100, %95
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @git__free(i8* %106)
  %108 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %109 = call i32 @git_error_set(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %120

110:                                              ; preds = %100
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %110, %105, %68, %38
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i8* @git__calloc(i32, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @inflateInit(%struct.TYPE_8__*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @pack_window_open(%struct.git_pack_file*, i32**, i32, i32*) #1

declare dso_local i32 @inflate(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @git_mwindow_close(i32**) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
