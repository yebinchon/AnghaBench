; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reader.c_workdir_reader_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reader.c_workdir_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.stat = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"could not stat '%s'\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_DEFAULT = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@GIT_READER_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i64*, i32*, i8*)* @workdir_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workdir_reader_read(%struct.TYPE_12__* %0, i32* %1, i64* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.stat, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %11, align 8
  %21 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %15, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @git_repository_workdir(i32 %24)
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %12, i32 %25, i8* %26)
  store i32 %27, i32* %18, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %132

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @p_lstat(i32 %32, %struct.stat* %13)
  store i32 %33, i32* %18, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %42, %38, %35
  %45 = load i32, i32* @GIT_ERROR_OS, align 4
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @git_error_set(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %132

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @git_futils_canonical_mode(i32 %51)
  store i64 %52, i64* %14, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %58 = load i32, i32* @GIT_FILTER_DEFAULT, align 4
  %59 = call i32 @git_filter_list_load(i32** %15, i32 %55, i32* null, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %132

62:                                               ; preds = %49
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @git_filter_list_apply_to_file(%struct.TYPE_12__* %63, i32* %64, i32 %67, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %132

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76, %73
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %89 = call i32 @git_odb_hash(i32* %17, i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %132

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call %struct.TYPE_11__* @git_index_get_bypath(i64 %101, i8* %102, i32 0)
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %16, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = call i32 @git_oid_equal(i32* %17, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111, %105, %98
  %117 = load i32, i32* @GIT_READER_MISMATCH, align 4
  store i32 %117, i32* %18, align 4
  br label %132

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32*, i32** %7, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @git_oid_cpy(i32* %123, i32* %17)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i64*, i64** %8, align 8
  %127 = icmp ne i64* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* %14, align 8
  %130 = load i64*, i64** %8, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %116, %91, %72, %61, %44, %29
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @git_filter_list_free(i32* %133)
  %135 = call i32 @git_buf_dispose(%struct.TYPE_12__* %12)
  %136 = load i32, i32* %18, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @p_lstat(i32, %struct.stat*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i64 @git_futils_canonical_mode(i32) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_filter_list_apply_to_file(%struct.TYPE_12__*, i32*, i32, i32) #2

declare dso_local i32 @git_odb_hash(i32*, i32, i32, i32) #2

declare dso_local %struct.TYPE_11__* @git_index_get_bypath(i64, i8*, i32) #2

declare dso_local i32 @git_oid_equal(i32*, i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
