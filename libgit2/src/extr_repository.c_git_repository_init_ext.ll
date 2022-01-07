; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_init_ext.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_init_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GIT_REPOSITORY_INIT_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"git_repository_init_options\00", align 1
@GIT_REPOSITORY_INIT_BARE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_REINIT = common dso_local global i32 0, align 4
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"attempt to reinitialize '%s'\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT__IS_REINIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_init_ext(i32** %0, i8* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca %struct.TYPE_16__, align 4
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %13 = bitcast %struct.TYPE_16__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_16__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = load i32**, i32*** %4, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = phi i1 [ false, %19 ], [ false, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = load i32, i32* @GIT_REPOSITORY_INIT_OPTIONS_VERSION, align 4
  %31 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_15__* %29, i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = call i32 @repo_init_directories(%struct.TYPE_16__* %7, %struct.TYPE_16__* %8, i8* %32, %struct.TYPE_15__* %33)
  store i32 %34, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %150

37:                                               ; preds = %25
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GIT_REPOSITORY_INIT_BARE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  %46 = call i8* @git_buf_cstr(%struct.TYPE_16__* %8)
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i8* [ null, %44 ], [ %46, %45 ]
  store i8* %48, i8** %11, align 8
  %49 = call i64 @valid_repository_path(%struct.TYPE_16__* %7, %struct.TYPE_16__* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GIT_REPOSITORY_INIT_NO_REINIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @git_error_set(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %62, i32* %12, align 4
  br label %150

63:                                               ; preds = %51
  %64 = load i32, i32* @GIT_REPOSITORY_INIT__IS_REINIT, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @repo_init_config(i32 %70, i8* %71, i32 %74, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %150

81:                                               ; preds = %63
  br label %128

82:                                               ; preds = %47
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = call i32 @repo_init_structure(i32 %84, i8* %85, %struct.TYPE_15__* %86)
  store i32 %87, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @repo_init_config(i32 %91, i8* %92, i32 %95, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GIT_HEAD_FILE, align 4
  %105 = call i32 @git_buf_joinpath(%struct.TYPE_16__* %10, i32 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %89, %82
  br label %150

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @git_path_exists(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113, %108
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @git_repository_create_head(i32 %120, i64 %123)
  store i32 %124, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %150

127:                                              ; preds = %118, %113
  br label %128

128:                                              ; preds = %127, %81
  %129 = load i32**, i32*** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @git_repository_open(i32** %129, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %150

135:                                              ; preds = %128
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32**, i32*** %4, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @repo_init_create_origin(i32* %142, i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %150

149:                                              ; preds = %140, %135
  br label %150

150:                                              ; preds = %149, %148, %134, %126, %107, %80, %58, %36
  %151 = call i32 @git_buf_dispose(%struct.TYPE_16__* %10)
  %152 = call i32 @git_buf_dispose(%struct.TYPE_16__* %9)
  %153 = call i32 @git_buf_dispose(%struct.TYPE_16__* %7)
  %154 = call i32 @git_buf_dispose(%struct.TYPE_16__* %8)
  %155 = load i32, i32* %12, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_15__*, i32, i8*) #2

declare dso_local i32 @repo_init_directories(%struct.TYPE_16__*, %struct.TYPE_16__*, i8*, %struct.TYPE_15__*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_16__*) #2

declare dso_local i64 @valid_repository_path(%struct.TYPE_16__*, %struct.TYPE_16__*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @repo_init_config(i32, i8*, i32, i32) #2

declare dso_local i32 @repo_init_structure(i32, i8*, %struct.TYPE_15__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_repository_create_head(i32, i64) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @repo_init_create_origin(i32*, i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
