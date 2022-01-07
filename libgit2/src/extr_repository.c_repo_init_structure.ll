; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_init_structure.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_init_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i8*, i8* }

@GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_SHARED_UMASK = common dso_local global i64 0, align 8
@GIT_REPOSITORY_INIT_BARE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT__NATURAL_WD = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_RELATIVE_GITLINK = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"init.templatedir\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_CPDIR_COPY_SYMLINKS = common dso_local global i32 0, align 4
@GIT_CPDIR_SIMPLE_TO_MODE = common dso_local global i32 0, align 4
@GIT_CPDIR_COPY_DOTFILES = common dso_local global i32 0, align 4
@GIT_CPDIR_CHMOD_DIRS = common dso_local global i32 0, align 4
@repo_template = common dso_local global %struct.TYPE_11__* null, align 8
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_CHMOD = common dso_local global i32 0, align 4
@GIT_DESC_FILE = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT__HAS_DOTGIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_12__*)* @repo_init_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repo_init_structure(i8* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32 @pick_dir_mode(%struct.TYPE_12__* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GIT_REPOSITORY_INIT_SHARED_UMASK, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GIT_REPOSITORY_INIT_BARE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GIT_REPOSITORY_INIT__NATURAL_WD, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GIT_REPOSITORY_INIT_RELATIVE_GITLINK, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @repo_write_gitlink(i8* %49, i8* %50, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %210

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %41, %3
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %138

63:                                               ; preds = %60
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %64 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %14, align 8
  br label %86

73:                                               ; preds = %63
  %74 = call i32 @git_config_open_default(i32** %13)
  store i32 %74, i32* %8, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @git_config_get_path(%struct.TYPE_13__* %16, i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = call i32 (...) @git_error_clear()
  br label %85

85:                                               ; preds = %83, %73
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = call i32 @git_sysdir_find_template_dir(%struct.TYPE_13__* %16)
  store i32 %90, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %14, align 8
  br label %95

95:                                               ; preds = %92, %89
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i8*, i8** %14, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load i8*, i8** %14, align 8
  %101 = call i64 @git__strcmp(i8* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i32, i32* @GIT_CPDIR_COPY_SYMLINKS, align 4
  %105 = load i32, i32* @GIT_CPDIR_SIMPLE_TO_MODE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @GIT_CPDIR_COPY_DOTFILES, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %17, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GIT_REPOSITORY_INIT_SHARED_UMASK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load i32, i32* @GIT_CPDIR_CHMOD_DIRS, align 4
  %116 = load i32, i32* %17, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %114, %103
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @git_futils_cp_r(i8* %119, i8* %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %118, %99, %96
  %125 = call i32 @git_buf_dispose(%struct.TYPE_13__* %16)
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @git_config_free(i32* %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %210

135:                                              ; preds = %130
  %136 = call i32 (...) @git_error_clear()
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %135, %124
  br label %138

138:                                              ; preds = %137, %60
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @repo_template, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %9, align 8
  br label %140

140:                                              ; preds = %205, %138
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i1 [ false, %140 ], [ %147, %143 ]
  br i1 %149, label %150, label %208

150:                                              ; preds = %148
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %171, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @GIT_MKDIR_PATH, align 4
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* @GIT_MKDIR_CHMOD, align 4
  %161 = load i32, i32* %18, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @git_futils_mkdir_relative(i64 %166, i8* %167, i32 %168, i32 %169, i32* null)
  store i32 %170, i32* %8, align 4
  br label %204

171:                                              ; preds = %150
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %203, label %174

174:                                              ; preds = %171
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %19, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %193

182:                                              ; preds = %174
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @GIT_DESC_FILE, align 4
  %187 = call i64 @strcmp(i64 %185, i32 %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %19, align 8
  br label %193

193:                                              ; preds = %189, %182, %174
  %194 = load i8*, i8** %5, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %19, align 8
  %202 = call i32 @repo_write_template(i8* %194, i32 0, i64 %197, i32 %200, i32 0, i8* %201)
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %193, %171
  br label %204

204:                                              ; preds = %203, %163
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 1
  store %struct.TYPE_11__* %207, %struct.TYPE_11__** %9, align 8
  br label %140

208:                                              ; preds = %148
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %133, %58
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @pick_dir_mode(%struct.TYPE_12__*) #1

declare dso_local i64 @repo_write_gitlink(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_config_open_default(i32**) #1

declare dso_local i32 @git_config_get_path(%struct.TYPE_13__*, i32*, i8*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_sysdir_find_template_dir(%struct.TYPE_13__*) #1

declare dso_local i64 @git__strcmp(i8*, i8*) #1

declare dso_local i32 @git_futils_cp_r(i8*, i8*, i32, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_futils_mkdir_relative(i64, i8*, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @repo_write_template(i8*, i32, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
