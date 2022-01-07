; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_move_head.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_move_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i8*, i32, i32 }
%struct.strbuf = type { i32 }
%struct.submodule = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@SUBMODULE_MOVE_HEAD_FORCE = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not get submodule information for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"submodule '%s' has dirty index\00", align 1
@SUBMODULE_MOVE_HEAD_DRY_RUN = common dso_local global i32 0, align 4
@ABSORB_GITDIR_RECURSE_SUBMODULES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/modules/%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"--super-prefix=%s%s/\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"--recurse-submodules\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"--reset\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Submodule '%s' could not be updated.\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"update-ref\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"--no-deref\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submodule_move_head(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.child_process, align 8
  %12 = alloca %struct.submodule*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %19 = load i32, i32* @the_repository, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @is_submodule_active(i32 %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %227

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32* %14, i32** %13, align 8
  br label %31

30:                                               ; preds = %24
  store i32* null, i32** %13, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @is_submodule_populated_gently(i8* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %227

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @the_repository, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call %struct.submodule* @submodule_from_path(i32 %41, i32* @null_oid, i8* %42)
  store %struct.submodule* %43, %struct.submodule** %12, align 8
  %44 = load %struct.submodule*, %struct.submodule** %12, align 8
  %45 = icmp ne %struct.submodule* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load %struct.submodule*, %struct.submodule** %12, align 8
  %59 = call i64 @submodule_has_dirty_index(%struct.submodule* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @error(i32 %62, i8* %63)
  store i32 %64, i32* %5, align 4
  br label %227

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52, %49
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SUBMODULE_MOVE_HEAD_DRY_RUN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %116, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @submodule_uses_gitfile(i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  %81 = call i32 @absorb_git_dir_into_superproject(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %96

83:                                               ; preds = %71
  %84 = call i32 (...) @get_git_common_dir()
  %85 = load %struct.submodule*, %struct.submodule** %12, align 8
  %86 = getelementptr inbounds %struct.submodule, %struct.submodule* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  store i8* %88, i8** %15, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @connect_work_tree_and_git_dir(i8* %89, i8* %90, i32 0)
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @submodule_reset_index(i8* %94)
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = call i32 (...) @get_git_common_dir()
  %106 = load %struct.submodule*, %struct.submodule** %12, align 8
  %107 = getelementptr inbounds %struct.submodule, %struct.submodule* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  store i8* %109, i8** %16, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 @connect_work_tree_and_git_dir(i8* %110, i8* %111, i32 1)
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @free(i8* %113)
  br label %115

115:                                              ; preds = %104, %99, %96
  br label %116

116:                                              ; preds = %115, %66
  %117 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  %118 = call i32 @prepare_submodule_repo_env(i32* %117)
  %119 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %124 = call i32 (...) @get_super_prefix_or_empty()
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @argv_array_pushf(i32* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %124, i8* %125)
  %127 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %128 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @SUBMODULE_MOVE_HEAD_DRY_RUN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %135 = call i32 @argv_array_push(i32* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %139

136:                                              ; preds = %116
  %137 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %138 = call i32 @argv_array_push(i32* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %146 = call i32 @argv_array_push(i32* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %150

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %149 = call i32 @argv_array_push(i32* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %157 = load i8*, i8** %7, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i8*, i8** %7, align 8
  br label %163

161:                                              ; preds = %155
  %162 = call i8* (...) @empty_tree_oid_hex()
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i8* [ %160, %159 ], [ %162, %161 ]
  %165 = call i32 @argv_array_push(i32* %156, i8* %164)
  br label %166

166:                                              ; preds = %163, %150
  %167 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %168 = load i8*, i8** %8, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i8*, i8** %8, align 8
  br label %174

172:                                              ; preds = %166
  %173 = call i8* (...) @empty_tree_oid_hex()
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i8* [ %171, %170 ], [ %173, %172 ]
  %176 = call i32 @argv_array_push(i32* %167, i8* %175)
  %177 = call i64 @run_command(%struct.child_process* %11)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @error(i32 %180, i8* %181)
  store i32 %182, i32* %10, align 4
  br label %225

183:                                              ; preds = %174
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @SUBMODULE_MOVE_HEAD_DRY_RUN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %224, label %188

188:                                              ; preds = %183
  %189 = load i8*, i8** %8, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = call i32 @child_process_init(%struct.child_process* %11)
  %193 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load i8*, i8** %6, align 8
  %196 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i8* %195, i8** %196, align 8
  %197 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  %198 = call i32 @prepare_submodule_repo_env(i32* %197)
  %199 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %200, i8* null)
  %202 = call i64 @run_command(%struct.child_process* %11)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %191
  store i32 -1, i32* %10, align 4
  br label %225

205:                                              ; preds = %191
  br label %223

206:                                              ; preds = %188
  %207 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %207, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @strbuf_addf(%struct.strbuf* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %208)
  %210 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @unlink_or_warn(i32 %211)
  %213 = call i32 @strbuf_release(%struct.strbuf* %17)
  %214 = load i8*, i8** %6, align 8
  %215 = call i64 @is_empty_dir(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %206
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @rmdir_or_warn(i8* %218)
  br label %220

220:                                              ; preds = %217, %206
  %221 = load %struct.submodule*, %struct.submodule** %12, align 8
  %222 = call i32 @submodule_unset_core_worktree(%struct.submodule* %221)
  br label %223

223:                                              ; preds = %220, %205
  br label %224

224:                                              ; preds = %223, %183
  br label %225

225:                                              ; preds = %224, %204, %179
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %225, %61, %39, %23
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_submodule_active(i32, i8*) #2

declare dso_local i32 @is_submodule_populated_gently(i8*, i32*) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i64 @submodule_has_dirty_index(%struct.submodule*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @submodule_uses_gitfile(i8*) #2

declare dso_local i32 @absorb_git_dir_into_superproject(i8*, i32) #2

declare dso_local i8* @xstrfmt(i8*, i32, i32) #2

declare dso_local i32 @get_git_common_dir(...) #2

declare dso_local i32 @connect_work_tree_and_git_dir(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @submodule_reset_index(i8*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32, i8*) #2

declare dso_local i32 @get_super_prefix_or_empty(...) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i8* @empty_tree_oid_hex(...) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @is_empty_dir(i8*) #2

declare dso_local i32 @rmdir_or_warn(i8*) #2

declare dso_local i32 @submodule_unset_core_worktree(%struct.submodule*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
