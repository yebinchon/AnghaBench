; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_add_setup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_add_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"attempt to add submodule '%s' that already exists\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"submodule path must be a relative path\00", align 1
@GITMODULES_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"adding submodules to a bare repository is not supported\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"submodule.%s.path\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@DOT_GIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_add_setup(i32** %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %19 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %17, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %23, %5
  %30 = phi i1 [ false, %23 ], [ false, %5 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @git_submodule_lookup(i32** null, i32* %33, i8* %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (...) @git_error_clear()
  br label %44

39:                                               ; preds = %29
  %40 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32, i8*, ...) @git_error_set(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %43, i32* %6, align 4
  br label %172

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @git_repository_workdir(i32* %46)
  %48 = call i64 @git__prefixcmp(i8* %45, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @git_repository_workdir(i32* %51)
  %53 = call i32 @strlen(i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @git_path_root(i8* %58)
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %63 = call i32 (i32, i8*, ...) @git_error_set(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %149

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @is_path_occupied(i32* %18, i32* %65, i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %149

70:                                               ; preds = %64
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %74, i32* %12, align 4
  br label %149

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @GITMODULES_CREATE, align 4
  %78 = call i32* @open_gitmodules(i32* %76, i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %82 = call i32 (i32, i8*, ...) @git_error_set(i32 %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %172

83:                                               ; preds = %75
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @git_buf_printf(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  store i32 %85, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @git_config_backend_set_string(i32* %88, i32 %90, i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %83
  br label %149

95:                                               ; preds = %87
  %96 = call i32 @submodule_config_key_trunc_puts(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %96, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @git_config_backend_set_string(i32* %99, i32 %101, i8* %102)
  store i32 %103, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %95
  br label %149

106:                                              ; preds = %98
  %107 = call i32 @git_buf_clear(%struct.TYPE_10__* %15)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @git_repository_workdir(i32* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %15, i32 %109, i8* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %149

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @git_path_exists(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @DOT_GIT, align 4
  %122 = call i64 @git_path_contains(%struct.TYPE_10__* %15, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %120, %115
  %125 = load i32*, i32** %8, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @git_submodule_resolve_url(%struct.TYPE_10__* %16, i32* %125, i8* %126)
  store i32 %127, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %149

130:                                              ; preds = %124
  %131 = load i32*, i32** %8, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @submodule_repo_init(i32** %17, i32* %131, i8* %132, i32 %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %149

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %120
  %141 = load i32*, i32** %8, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @git_submodule_lookup(i32** %14, i32* %141, i8* %142)
  store i32 %143, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %149

146:                                              ; preds = %140
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @git_submodule_init(i32* %147, i32 0)
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %146, %145, %138, %129, %114, %105, %94, %73, %69, %61
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32*, i32** %14, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @git_submodule_free(i32* %156)
  store i32* null, i32** %14, align 8
  br label %158

158:                                              ; preds = %155, %152, %149
  %159 = load i32**, i32*** %7, align 8
  %160 = icmp ne i32** %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %14, align 8
  %163 = load i32**, i32*** %7, align 8
  store i32* %162, i32** %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @git_config_backend_free(i32* %165)
  %167 = load i32*, i32** %17, align 8
  %168 = call i32 @git_repository_free(i32* %167)
  %169 = call i32 @git_buf_dispose(%struct.TYPE_10__* %16)
  %170 = call i32 @git_buf_dispose(%struct.TYPE_10__* %15)
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %164, %80, %39
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_error_set(i32, i8*, ...) #2

declare dso_local i64 @git__prefixcmp(i8*, i32) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @git_path_root(i8*) #2

declare dso_local i32 @is_path_occupied(i32*, i32*, i8*) #2

declare dso_local i32* @open_gitmodules(i32*, i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @git_config_backend_set_string(i32*, i32, i8*) #2

declare dso_local i32 @submodule_config_key_trunc_puts(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i64 @git_path_exists(i32) #2

declare dso_local i64 @git_path_contains(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @git_submodule_resolve_url(%struct.TYPE_10__*, i32*, i8*) #2

declare dso_local i32 @submodule_repo_init(i32**, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_submodule_init(i32*, i32) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @git_config_backend_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
