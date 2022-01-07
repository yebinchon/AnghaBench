; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_blob_content_to_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_blob_content_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.stat = type { i64 }
%struct.checkout_stream = type { i8*, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@GIT_FILTER_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4
@checkout_stream_write = common dso_local global i32 0, align 4
@checkout_stream_close = common dso_local global i32 0, align 4
@checkout_stream_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.stat*, i32*, i8*, i8*, i64)* @blob_content_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_content_to_file(%struct.TYPE_13__* %0, %struct.stat* %1, i32* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.checkout_stream, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.stat* %1, %struct.stat** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  br label %38

36:                                               ; preds = %6
  %37 = load i64, i64* %13, align 8
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i64 [ %35, %31 ], [ %37, %36 ]
  store i64 %39, i64* %15, align 8
  %40 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_FILTER_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mkpath2file(%struct.TYPE_13__* %46, i8* %47, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %21, align 4
  store i32 %55, i32* %7, align 4
  br label %160

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* @O_CREAT, align 4
  %61 = load i32, i32* @O_TRUNC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_WRONLY, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i64, i64* %15, align 8
  store i64 %66, i64* %18, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* @GIT_FILEMODE_BLOB, align 8
  store i64 %69, i64* %18, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i64, i64* %18, align 8
  %74 = call i32 @p_open(i8* %71, i32 %72, i64 %73)
  store i32 %74, i32* %20, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @GIT_ERROR_OS, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @git_error_set(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %7, align 4
  br label %160

81:                                               ; preds = %70
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32* %83, i32** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32* %86, i32** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %81
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %100 = call i32 @git_filter_list__load_ext(i32** %19, i32 %96, i32* %97, i8* %98, i32 %99, %struct.TYPE_12__* %16)
  store i32 %100, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @p_close(i32 %103)
  %105 = load i32, i32* %21, align 4
  store i32 %105, i32* %7, align 4
  br label %160

106:                                              ; preds = %93, %81
  %107 = call i32 @memset(%struct.checkout_stream* %17, i32 0, i32 32)
  %108 = load i32, i32* @checkout_stream_write, align 4
  %109 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @checkout_stream_close, align 4
  %112 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @checkout_stream_free, align 4
  %115 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 0
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* %20, align 4
  %120 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load i32*, i32** %19, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 3
  %125 = call i32 @git_filter_list_stream_blob(i32* %122, i32* %123, %struct.TYPE_14__* %124)
  store i32 %125, i32* %21, align 4
  %126 = getelementptr inbounds %struct.checkout_stream, %struct.checkout_stream* %17, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @git_filter_list_free(i32* %131)
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %106
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %7, align 4
  br label %160

137:                                              ; preds = %106
  %138 = load %struct.stat*, %struct.stat** %9, align 8
  %139 = icmp ne %struct.stat* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load %struct.stat*, %struct.stat** %9, align 8
  %148 = call i32 @p_stat(i8* %146, %struct.stat* %147)
  store i32 %148, i32* %21, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load i32, i32* @GIT_ERROR_OS, align 4
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @git_error_set(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %21, align 4
  store i32 %154, i32* %7, align 4
  br label %160

155:                                              ; preds = %140
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.stat*, %struct.stat** %9, align 8
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %137
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %159, %150, %135, %102, %76, %54
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkpath2file(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @p_open(i8*, i32, i64) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_filter_list__load_ext(i32**, i32, i32*, i8*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @memset(%struct.checkout_stream*, i32, i32) #2

declare dso_local i32 @git_filter_list_stream_blob(i32*, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
