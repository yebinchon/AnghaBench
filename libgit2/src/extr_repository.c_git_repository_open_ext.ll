; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_open_ext.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_open_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@GIT_REPOSITORY_OPEN_FROM_ENV = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REPOSITORY_OPEN_BARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_open_ext(%struct.TYPE_20__** %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__** %0, %struct.TYPE_20__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %19 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %20 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %21 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %16, align 8
  store i32* null, i32** %17, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GIT_REPOSITORY_OPEN_FROM_ENV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @_git_repository_open_ext_from_env(%struct.TYPE_20__** %27, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %153

30:                                               ; preds = %4
  %31 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %32 = icmp ne %struct.TYPE_20__** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @find_repo(%struct.TYPE_21__* %12, %struct.TYPE_21__* %13, %struct.TYPE_21__* %14, %struct.TYPE_21__* %15, i8* %36, i32 %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %44 = icmp ne %struct.TYPE_20__** %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %35
  br label %133

46:                                               ; preds = %42
  %47 = call %struct.TYPE_20__* (...) @repository_alloc()
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %16, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %49 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__* %48)
  %50 = call i8* @git_buf_detach(%struct.TYPE_21__* %12)
  %51 = bitcast i8* %50 to %struct.TYPE_20__*
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %53, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__* %56)
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %46
  %62 = call i8* @git_buf_detach(%struct.TYPE_21__* %14)
  %63 = bitcast i8* %62 to %struct.TYPE_20__*
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 3
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__* %68)
  br label %70

70:                                               ; preds = %61, %46
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = call i8* @git_buf_detach(%struct.TYPE_21__* %15)
  %76 = bitcast i8* %75 to %struct.TYPE_20__*
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__* %81)
  br label %83

83:                                               ; preds = %74, %70
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %85 = call i32 @repo_is_worktree(i32* %11, %struct.TYPE_20__* %84)
  store i32 %85, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %133

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %93 = call i32 @git_repository_config_snapshot(i32** %17, %struct.TYPE_20__* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @GIT_ENOTFOUND, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %133

101:                                              ; preds = %96, %88
  %102 = load i32*, i32** %17, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @check_repositoryformatversion(i32* %105)
  store i32 %106, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %133

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @GIT_REPOSITORY_OPEN_BARE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %132

117:                                              ; preds = %109
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = call i32 @load_config_data(%struct.TYPE_20__* %121, i32* %122)
  store i32 %123, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @load_workdir(%struct.TYPE_20__* %126, i32* %127, %struct.TYPE_21__* %13)
  store i32 %128, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %120
  br label %133

131:                                              ; preds = %125, %117
  br label %132

132:                                              ; preds = %131, %114
  br label %133

133:                                              ; preds = %132, %130, %108, %100, %87, %45
  %134 = call i32 @git_buf_dispose(%struct.TYPE_21__* %12)
  %135 = call i32 @git_buf_dispose(%struct.TYPE_21__* %13)
  %136 = call i32 @git_buf_dispose(%struct.TYPE_21__* %14)
  %137 = call i32 @git_buf_dispose(%struct.TYPE_21__* %15)
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @git_config_free(i32* %138)
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %144 = call i32 @git_repository_free(%struct.TYPE_20__* %143)
  br label %145

145:                                              ; preds = %142, %133
  %146 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %147 = icmp ne %struct.TYPE_20__** %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %150 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* %149, %struct.TYPE_20__** %150, align 8
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %26
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_git_repository_open_ext_from_env(%struct.TYPE_20__**, i8*) #2

declare dso_local i32 @find_repo(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i8*, i32, i8*) #2

declare dso_local %struct.TYPE_20__* @repository_alloc(...) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_21__*) #2

declare dso_local i32 @repo_is_worktree(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @git_repository_config_snapshot(i32**, %struct.TYPE_20__*) #2

declare dso_local i32 @check_repositoryformatversion(i32*) #2

declare dso_local i32 @load_config_data(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @load_workdir(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_21__*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_free(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
