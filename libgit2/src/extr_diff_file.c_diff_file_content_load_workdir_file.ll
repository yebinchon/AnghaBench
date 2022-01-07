; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_diff_file_content_load_workdir_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_diff_file_content_load_workdir_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__, %struct.TYPE_16__*, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_ALLOW_UNSAFE = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__UNMAP_DATA = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__FREE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__*)* @diff_file_content_load_workdir_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_file_content_load_workdir_file(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = call i32 @git_buf_cstr(%struct.TYPE_19__* %13)
  %15 = call i64 @git_futils_open_ro(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = bitcast %struct.TYPE_19__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %17 = load i64, i64* %10, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %133

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @git_futils_filesize(i64 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = icmp ne i64 %31, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %127

38:                                               ; preds = %29, %22
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = call i64 @diff_file_content_binary_by_size(%struct.TYPE_18__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %127

50:                                               ; preds = %45, %38
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %60 = load i32, i32* @GIT_FILTER_ALLOW_UNSAFE, align 4
  %61 = call i32 @git_filter_list_load(i32** %9, i32 %53, i32* null, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %127

64:                                               ; preds = %50
  %65 = load i32*, i32** %9, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @git_futils_mmap_ro(%struct.TYPE_20__* %69, i64 %70, i32 0, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @GIT_DIFF_FLAG__UNMAP_DATA, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %127

84:                                               ; preds = %67
  %85 = call i32 (...) @git_error_clear()
  br label %86

86:                                               ; preds = %84, %64
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @git_futils_readbuffer_fd(%struct.TYPE_19__* %11, i64 %87, i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %126, label %95

95:                                               ; preds = %86
  %96 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_19__* %12, i32* %97, %struct.TYPE_19__* %11)
  store i32 %98, i32* %8, align 4
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = call i32 @git_buf_dispose(%struct.TYPE_19__* %11)
  br label %106

106:                                              ; preds = %104, %95
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load i32, i32* @GIT_DIFF_FLAG__FREE_DATA, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %109, %106
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %78, %63, %49, %37
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @git_filter_list_free(i32* %128)
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @p_close(i64 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %19
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @git_futils_open_ro(i32) #1

declare dso_local i32 @git_buf_cstr(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @git_futils_filesize(i64) #1

declare dso_local i64 @diff_file_content_binary_by_size(%struct.TYPE_18__*) #1

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @git_futils_mmap_ro(%struct.TYPE_20__*, i64, i32, i64) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_futils_readbuffer_fd(%struct.TYPE_19__*, i64, i64) #1

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_19__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_19__*) #1

declare dso_local i32 @git_filter_list_free(i32*) #1

declare dso_local i32 @p_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
