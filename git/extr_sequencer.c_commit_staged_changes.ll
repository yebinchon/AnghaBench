; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_commit_staged_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_commit_staged_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.todo_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@ALLOW_EMPTY = common dso_local global i32 0, align 4
@EDIT_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot rebase: You have unstaged changes.\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot amend non-existing commit\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid file: '%s'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid contents: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [122 x i8] c"\0AYou have uncommitted changes in your working tree. Please, commit them\0Afirst and then run 'git rebase --continue' again.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Incorrect current_fixups:\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"could not write file: '%s'\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"squash \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\0Asquash \00", align 1
@CLEANUP_MSG = common dso_local global i32 0, align 4
@AMEND_MSG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"could not remove CHERRY_PICK_HEAD\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"could not commit staged changes.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.replay_opts*, %struct.todo_list*)* @commit_staged_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_staged_changes(%struct.repository* %0, %struct.replay_opts* %1, %struct.todo_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.replay_opts*, align 8
  %7 = alloca %struct.todo_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.commit*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %6, align 8
  store %struct.todo_list* %2, %struct.todo_list** %7, align 8
  %19 = load i32, i32* @ALLOW_EMPTY, align 4
  %20 = load i32, i32* @EDIT_MSG, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.repository*, %struct.repository** %5, align 8
  %23 = call i64 @has_unstaged_changes(%struct.repository* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i32, ...) @error(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %284

28:                                               ; preds = %3
  %29 = load %struct.repository*, %struct.repository** %5, align 8
  %30 = call i32 @has_uncommitted_changes(%struct.repository* %29, i32 0)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = call i8* (...) @rebase_path_amend()
  %35 = call i64 @file_exists(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %220

37:                                               ; preds = %28
  %38 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %39 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (i32, ...) @error(i32 %42)
  store i32 %43, i32* %4, align 4
  br label %284

44:                                               ; preds = %37
  %45 = call i8* (...) @rebase_path_amend()
  %46 = call i32 @read_oneliner(%struct.strbuf* %11, i8* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i8* (...) @rebase_path_amend()
  %51 = call i32 (i32, ...) @error(i32 %49, i8* %50)
  store i32 %51, i32* %4, align 4
  br label %284

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @get_oid_hex(i32 %54, %struct.object_id* %13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i8* (...) @rebase_path_amend()
  %60 = call i32 (i32, ...) @error(i32 %58, i8* %59)
  store i32 %60, i32* %4, align 4
  br label %284

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = call i32 @oideq(%struct.object_id* %12, %struct.object_id* %13)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = call i32 @_(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 (i32, ...) @error(i32 %68)
  store i32 %69, i32* %4, align 4
  br label %284

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %75 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %70
  br label %215

79:                                               ; preds = %73
  %80 = call i32 @oideq(%struct.object_id* %12, %struct.object_id* %13)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i8* (...) @rebase_path_stopped_sha()
  %84 = call i64 @file_exists(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %88 = call i32 @peek_command(%struct.todo_list* %87, i32 0)
  %89 = call i64 @is_fixup(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = call i8* (...) @rebase_path_fixup_msg()
  %93 = call i64 @unlink(i8* %92)
  %94 = call i8* (...) @rebase_path_squash_msg()
  %95 = call i64 @unlink(i8* %94)
  %96 = call i8* (...) @rebase_path_current_fixups()
  %97 = call i64 @unlink(i8* %96)
  %98 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %99 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %98, i32 0, i32 1
  %100 = call i32 @strbuf_reset(%struct.TYPE_3__* %99)
  %101 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %102 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %91, %86
  br label %214

104:                                              ; preds = %82
  %105 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %106 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %14, align 8
  %109 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %110 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %15, align 4
  %113 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %114 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %114, align 8
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %104
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %119, %104
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 10
  br label %135

135:                                              ; preds = %126, %123
  %136 = phi i1 [ false, %123 ], [ %134, %126 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %15, align 4
  br label %123

140:                                              ; preds = %135
  %141 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %142 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %141, i32 0, i32 1
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @strbuf_setlen(%struct.TYPE_3__* %142, i32 %143)
  %145 = load i8*, i8** %14, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i8* (...) @rebase_path_current_fixups()
  %148 = call i64 @write_message(i8* %145, i32 %146, i8* %147, i32 0)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %140
  %151 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %152 = call i8* (...) @rebase_path_current_fixups()
  %153 = call i32 (i32, ...) @error(i32 %151, i8* %152)
  store i32 %153, i32* %4, align 4
  br label %284

154:                                              ; preds = %140
  %155 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %156 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %161 = call i32 @peek_command(%struct.todo_list* %160, i32 0)
  %162 = call i64 @is_fixup(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %159
  store i32 1, i32* %9, align 4
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @starts_with(i8* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @strstr(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @EDIT_MSG, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = load i32, i32* @CLEANUP_MSG, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %172, %168, %164
  br label %213

180:                                              ; preds = %159, %154
  %181 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %182 = call i32 @peek_command(%struct.todo_list* %181, i32 0)
  %183 = call i64 @is_fixup(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = call i8* (...) @rebase_path_squash_msg()
  store i8* %186, i8** %17, align 8
  %187 = load %struct.repository*, %struct.repository** %5, align 8
  %188 = call i64 @parse_head(%struct.repository* %187, %struct.commit** %16)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %185
  %191 = load %struct.commit*, %struct.commit** %16, align 8
  %192 = call i8* @get_commit_buffer(%struct.commit* %191, i32* null)
  store i8* %192, i8** %14, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8*, i8** %14, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = load i8*, i8** %17, align 8
  %199 = call i64 @write_message(i8* %195, i32 %197, i8* %198, i32 0)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194, %190, %185
  %202 = load %struct.commit*, %struct.commit** %16, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @unuse_commit_buffer(%struct.commit* %202, i8* %203)
  %205 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i8*, i8** %17, align 8
  %207 = call i32 (i32, ...) @error(i32 %205, i8* %206)
  store i32 %207, i32* %4, align 4
  br label %284

208:                                              ; preds = %194
  %209 = load %struct.commit*, %struct.commit** %16, align 8
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 @unuse_commit_buffer(%struct.commit* %209, i8* %210)
  br label %212

212:                                              ; preds = %208, %180
  br label %213

213:                                              ; preds = %212, %179
  br label %214

214:                                              ; preds = %213, %103
  br label %215

215:                                              ; preds = %214, %78
  %216 = call i32 @strbuf_release(%struct.strbuf* %11)
  %217 = load i32, i32* @AMEND_MSG, align 4
  %218 = load i32, i32* %8, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %215, %28
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220
  %224 = load %struct.repository*, %struct.repository** %5, align 8
  %225 = call i8* @git_path_cherry_pick_head(%struct.repository* %224)
  store i8* %225, i8** %18, align 8
  %226 = load i8*, i8** %18, align 8
  %227 = call i64 @file_exists(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load i8*, i8** %18, align 8
  %231 = call i64 @unlink(i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %235 = call i32 (i32, ...) @error(i32 %234)
  store i32 %235, i32* %4, align 4
  br label %284

236:                                              ; preds = %229, %223
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  store i32 0, i32* %4, align 4
  br label %284

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %220
  %242 = load %struct.repository*, %struct.repository** %5, align 8
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  br label %248

246:                                              ; preds = %241
  %247 = call i32* (...) @rebase_path_message()
  br label %248

248:                                              ; preds = %246, %245
  %249 = phi i32* [ null, %245 ], [ %247, %246 ]
  %250 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i64 @run_git_commit(%struct.repository* %242, i32* %249, %struct.replay_opts* %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %256 = call i32 (i32, ...) @error(i32 %255)
  store i32 %256, i32* %4, align 4
  br label %284

257:                                              ; preds = %248
  %258 = call i8* (...) @rebase_path_amend()
  %259 = call i64 @unlink(i8* %258)
  %260 = load %struct.repository*, %struct.repository** %5, align 8
  %261 = call i8* @git_path_merge_head(%struct.repository* %260)
  %262 = call i64 @unlink(i8* %261)
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = call i8* (...) @rebase_path_fixup_msg()
  %267 = call i64 @unlink(i8* %266)
  %268 = call i8* (...) @rebase_path_squash_msg()
  %269 = call i64 @unlink(i8* %268)
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %272 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = call i8* (...) @rebase_path_current_fixups()
  %277 = call i64 @unlink(i8* %276)
  %278 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %279 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %278, i32 0, i32 1
  %280 = call i32 @strbuf_reset(%struct.TYPE_3__* %279)
  %281 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %282 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %281, i32 0, i32 0
  store i64 0, i64* %282, align 8
  br label %283

283:                                              ; preds = %275, %270
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %254, %239, %233, %201, %150, %67, %57, %48, %41, %25
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i64 @has_unstaged_changes(%struct.repository*, i32) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @has_uncommitted_changes(%struct.repository*, i32) #1

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i8* @rebase_path_amend(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @read_oneliner(%struct.strbuf*, i8*, i32) #1

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i8* @rebase_path_stopped_sha(...) #1

declare dso_local i64 @is_fixup(i32) #1

declare dso_local i32 @peek_command(%struct.todo_list*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i8* @rebase_path_fixup_msg(...) #1

declare dso_local i8* @rebase_path_squash_msg(...) #1

declare dso_local i8* @rebase_path_current_fixups(...) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG(i8*, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @write_message(i8*, i32, i8*, i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @parse_head(%struct.repository*, %struct.commit**) #1

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i8* @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i64 @run_git_commit(%struct.repository*, i32*, %struct.replay_opts*, i32) #1

declare dso_local i32* @rebase_path_message(...) #1

declare dso_local i8* @git_path_merge_head(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
