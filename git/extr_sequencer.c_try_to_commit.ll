; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_try_to_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_try_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32, i32 }
%struct.replay_opts = type { i32, i32, i32, i64, i64 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }
%struct.commit_extra_header = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@AMEND_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1
@__const.try_to_commit.exclude_gpgsig = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to parse commit author\00", align 1
@CREATE_ROOT_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"git write-tree failed to write a tree\00", align 1
@ALLOW_EMPTY = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"prepare-commit-msg\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"unable to read commit message from '%s'\00", align 1
@CLEANUP_MSG = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_ALL = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_SPACE = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_NONE = common dso_local global i32 0, align 4
@EDIT_MSG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to write commit object\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"GIT_REFLOG_ACTION\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"post-commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.strbuf*, i8*, %struct.replay_opts*, i32, %struct.object_id*)* @try_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_commit(%struct.repository* %0, %struct.strbuf* %1, i8* %2, %struct.replay_opts* %3, i32 %4, %struct.object_id* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.replay_opts*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.commit_list*, align 8
  %17 = alloca %struct.commit_extra_header*, align 8
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca %struct.strbuf, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x i8*], align 16
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.strbuf* %1, %struct.strbuf** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.replay_opts* %3, %struct.replay_opts** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.object_id* %5, %struct.object_id** %13, align 8
  store %struct.commit* null, %struct.commit** %15, align 8
  store %struct.commit_list* null, %struct.commit_list** %16, align 8
  store %struct.commit_extra_header* null, %struct.commit_extra_header** %17, align 8
  %28 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %29 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %30 = load %struct.repository*, %struct.repository** %8, align 8
  %31 = call i64 @parse_head(%struct.repository* %30, %struct.commit** %15)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %252

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @AMEND_MSG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = bitcast [2 x i8*]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([2 x i8*]* @__const.try_to_commit.exclude_gpgsig to i8*), i64 16, i1 false)
  %41 = call i8* (...) @get_commit_output_encoding()
  store i8* %41, i8** %25, align 8
  %42 = load %struct.commit*, %struct.commit** %15, align 8
  %43 = load i8*, i8** %25, align 8
  %44 = call i8* @logmsg_reencode(%struct.commit* %42, i32* null, i8* %43)
  store i8* %44, i8** %26, align 8
  %45 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %46 = icmp ne %struct.strbuf* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  store i8* null, i8** %27, align 8
  %48 = load i8*, i8** %26, align 8
  %49 = call i32 @find_commit_subject(i8* %48, i8** %27)
  store %struct.strbuf* %19, %struct.strbuf** %9, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %51 = load i8*, i8** %27, align 8
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %50, i8* %51)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load i8*, i8** %26, align 8
  %55 = call i8* @get_author(i8* %54)
  store i8* %55, i8** %20, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.commit*, %struct.commit** %15, align 8
  %57 = load i8*, i8** %26, align 8
  %58 = call i32 @unuse_commit_buffer(%struct.commit* %56, i8* %57)
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i8*, ...) @error(i8* %64)
  store i32 %65, i32* %23, align 4
  br label %244

66:                                               ; preds = %53
  %67 = load %struct.commit*, %struct.commit** %15, align 8
  %68 = getelementptr inbounds %struct.commit, %struct.commit* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.commit_list* @copy_commit_list(i32 %69)
  store %struct.commit_list* %70, %struct.commit_list** %16, align 8
  %71 = load %struct.commit*, %struct.commit** %15, align 8
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  %73 = call %struct.commit_extra_header* @read_commit_extra_headers(%struct.commit* %71, i8** %72)
  store %struct.commit_extra_header* %73, %struct.commit_extra_header** %17, align 8
  br label %91

74:                                               ; preds = %34
  %75 = load %struct.commit*, %struct.commit** %15, align 8
  %76 = icmp ne %struct.commit* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @CREATE_ROOT_COMMIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @AMEND_MSG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %77
  %88 = load %struct.commit*, %struct.commit** %15, align 8
  %89 = call i32 @commit_list_insert(%struct.commit* %88, %struct.commit_list** %16)
  br label %90

90:                                               ; preds = %87, %82, %74
  br label %91

91:                                               ; preds = %90, %66
  %92 = load %struct.repository*, %struct.repository** %8, align 8
  %93 = getelementptr inbounds %struct.repository, %struct.repository* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.repository*, %struct.repository** %8, align 8
  %96 = getelementptr inbounds %struct.repository, %struct.repository* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @write_index_as_tree(%struct.object_id* %14, i32 %94, i32 %97, i32 0, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 (i8*, ...) @error(i8* %103)
  store i32 %104, i32* %23, align 4
  br label %244

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @ALLOW_EMPTY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %105
  %111 = load %struct.commit*, %struct.commit** %15, align 8
  %112 = icmp ne %struct.commit* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.commit*, %struct.commit** %15, align 8
  %115 = call i32 @get_commit_tree_oid(%struct.commit* %114)
  br label %120

116:                                              ; preds = %110
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi i32 [ %115, %113 ], [ %119, %116 ]
  %122 = call i64 @oideq(i32 %121, %struct.object_id* %14)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 1, i32* %23, align 4
  br label %244

125:                                              ; preds = %120, %105
  %126 = call i64 @find_hook(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load %struct.repository*, %struct.repository** %8, align 8
  %130 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %131 = load i8*, i8** %21, align 8
  %132 = call i32 @run_prepare_commit_msg_hook(%struct.repository* %129, %struct.strbuf* %130, i8* %131)
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %23, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %244

136:                                              ; preds = %128
  %137 = call i32 (...) @git_path_commit_editmsg()
  %138 = call i64 @strbuf_read_file(%struct.strbuf* %19, i32 %137, i32 2048)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %142 = call i32 (...) @git_path_commit_editmsg()
  %143 = call i32 @error_errno(i32 %141, i32 %142)
  store i32 %143, i32* %23, align 4
  br label %244

144:                                              ; preds = %136
  store %struct.strbuf* %19, %struct.strbuf** %9, align 8
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @CLEANUP_MSG, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  store i32 %151, i32* %22, align 4
  br label %174

152:                                              ; preds = %145
  %153 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %154 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %159 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157, %152
  %163 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %164 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @COMMIT_MSG_CLEANUP_SPACE, align 4
  store i32 %168, i32* %22, align 4
  br label %173

169:                                              ; preds = %162, %157
  %170 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %171 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %22, align 4
  br label %173

173:                                              ; preds = %169, %167
  br label %174

174:                                              ; preds = %173, %150
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* @COMMIT_MSG_CLEANUP_NONE, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @strbuf_stripspace(%struct.strbuf* %179, i32 %183)
  br label %185

185:                                              ; preds = %178, %174
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @EDIT_MSG, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %192 = load i32, i32* %22, align 4
  %193 = call i64 @message_is_empty(%struct.strbuf* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 1, i32* %23, align 4
  br label %244

196:                                              ; preds = %190, %185
  %197 = call i32 (...) @reset_ident_date()
  %198 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %199 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %202 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %205 = load %struct.object_id*, %struct.object_id** %13, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %208 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.commit_extra_header*, %struct.commit_extra_header** %17, align 8
  %211 = call i64 @commit_tree_extended(i32 %200, i32 %203, %struct.object_id* %14, %struct.commit_list* %204, %struct.object_id* %205, i8* %206, i32 %209, %struct.commit_extra_header* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %196
  %214 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 (i8*, ...) @error(i8* %216)
  store i32 %217, i32* %23, align 4
  br label %244

218:                                              ; preds = %196
  %219 = load %struct.commit*, %struct.commit** %15, align 8
  %220 = load %struct.object_id*, %struct.object_id** %13, align 8
  %221 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %222 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %223 = call i64 @update_head_with_reflog(%struct.commit* %219, %struct.object_id* %220, i32 %221, %struct.strbuf* %222, %struct.strbuf* %18)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %227)
  store i32 %228, i32* %23, align 4
  br label %244

229:                                              ; preds = %218
  %230 = load %struct.repository*, %struct.repository** %8, align 8
  %231 = getelementptr inbounds %struct.repository, %struct.repository* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @run_commit_hook(i32 0, i32 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @AMEND_MSG, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %229
  %239 = load %struct.repository*, %struct.repository** %8, align 8
  %240 = load %struct.commit*, %struct.commit** %15, align 8
  %241 = load %struct.object_id*, %struct.object_id** %13, align 8
  %242 = call i32 @commit_post_rewrite(%struct.repository* %239, %struct.commit* %240, %struct.object_id* %241)
  br label %243

243:                                              ; preds = %238, %229
  br label %244

244:                                              ; preds = %243, %225, %213, %195, %140, %135, %124, %100, %61
  %245 = load %struct.commit_extra_header*, %struct.commit_extra_header** %17, align 8
  %246 = call i32 @free_commit_extra_headers(%struct.commit_extra_header* %245)
  %247 = call i32 @strbuf_release(%struct.strbuf* %18)
  %248 = call i32 @strbuf_release(%struct.strbuf* %19)
  %249 = load i8*, i8** %20, align 8
  %250 = call i32 @free(i8* %249)
  %251 = load i32, i32* %23, align 4
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %244, %33
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @parse_head(%struct.repository*, %struct.commit**) #2

declare dso_local i8* @get_commit_output_encoding(...) #2

declare dso_local i8* @logmsg_reencode(%struct.commit*, i32*, i8*) #2

declare dso_local i32 @find_commit_subject(i8*, i8**) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @get_author(i8*) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit_list* @copy_commit_list(i32) #2

declare dso_local %struct.commit_extra_header* @read_commit_extra_headers(%struct.commit*, i8**) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i64 @write_index_as_tree(%struct.object_id*, i32, i32, i32, i32*) #2

declare dso_local i64 @oideq(i32, %struct.object_id*) #2

declare dso_local i32 @get_commit_tree_oid(%struct.commit*) #2

declare dso_local i64 @find_hook(i8*) #2

declare dso_local i32 @run_prepare_commit_msg_hook(%struct.repository*, %struct.strbuf*, i8*) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @git_path_commit_editmsg(...) #2

declare dso_local i32 @error_errno(i32, i32) #2

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #2

declare dso_local i64 @message_is_empty(%struct.strbuf*, i32) #2

declare dso_local i32 @reset_ident_date(...) #2

declare dso_local i64 @commit_tree_extended(i32, i32, %struct.object_id*, %struct.commit_list*, %struct.object_id*, i8*, i32, %struct.commit_extra_header*) #2

declare dso_local i64 @update_head_with_reflog(%struct.commit*, %struct.object_id*, i32, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @getenv(i8*) #2

declare dso_local i32 @run_commit_hook(i32, i32, i8*, i32*) #2

declare dso_local i32 @commit_post_rewrite(%struct.repository*, %struct.commit*, %struct.object_id*) #2

declare dso_local i32 @free_commit_extra_headers(%struct.commit_extra_header*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
