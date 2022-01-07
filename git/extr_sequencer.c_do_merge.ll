; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.lock_file = type { i32 }
%struct.child_process = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.repository = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.commit = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.commit_list*, %struct.TYPE_10__* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.replay_opts = type { i32, i8*, i8*, i32, i32*, i64, i32, i64 }
%struct.merge_options = type { i8*, i8*, i32, %struct.strbuf }
%struct.TYPE_15__ = type { %struct.commit_list* }

@TODO_EDIT_MERGE_MSG = common dso_local global i32 0, align 4
@EDIT_MSG = common dso_local global i32 0, align 4
@VERIFY_MSG = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@do_merge.lock = internal global %struct.lock_file zeroinitializer, align 4
@LOCK_REPORT_ON_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot merge without a current revision\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to parse '%.*s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"nothing to merge: '%.*s'\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"octopus merge cannot be executed on top of a [new root]\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"could not get commit message of '%s'\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"author %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Merge %s '%.*s'\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"branches\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@AMEND_MSG = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@staged_changes_advice = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"octopus\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-X%s\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--no-edit\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"--no-ff\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"--no-log\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"--no-stat\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"could not read index\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_14__* null, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"no-ff\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [39 x i8] c"could not even attempt to merge '%.*s'\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"merge: Unable to write new index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, i8*, i32, i32, %struct.replay_opts*)* @do_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_merge(%struct.repository* %0, %struct.commit* %1, i8* %2, i32 %3, i32 %4, %struct.replay_opts* %5) #0 {
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.replay_opts*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.commit_list*, align 8
  %19 = alloca %struct.commit_list*, align 8
  %20 = alloca %struct.commit_list*, align 8
  %21 = alloca %struct.commit_list*, align 8
  %22 = alloca %struct.commit_list**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.merge_options, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.strbuf, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.commit_list*, align 8
  %37 = alloca %struct.child_process, align 4
  %38 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.replay_opts* %5, %struct.replay_opts** %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TODO_EDIT_MERGE_MSG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load i32, i32* @EDIT_MSG, align 4
  %45 = load i32, i32* @VERIFY_MSG, align 4
  %46 = or i32 %44, %45
  br label %48

47:                                               ; preds = %6
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ]
  store i32 %49, i32* %13, align 4
  %50 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store %struct.commit_list* null, %struct.commit_list** %20, align 8
  store %struct.commit_list* null, %struct.commit_list** %21, align 8
  store %struct.commit_list** %21, %struct.commit_list*** %22, align 8
  %51 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %52 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %57 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %62 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60, %55
  br label %71

67:                                               ; preds = %60, %48
  %68 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %69 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i8* [ null, %66 ], [ %70, %67 ]
  store i8* %72, i8** %23, align 8
  %73 = load %struct.repository*, %struct.repository** %7, align 8
  %74 = load i32, i32* @LOCK_REPORT_ON_ERROR, align 4
  %75 = call i64 @repo_hold_locked_index(%struct.repository* %73, %struct.lock_file* @do_merge.lock, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %28, align 4
  br label %647

78:                                               ; preds = %71
  %79 = call %struct.commit* @lookup_commit_reference_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.commit* %79, %struct.commit** %15, align 8
  %80 = load %struct.commit*, %struct.commit** %15, align 8
  %81 = icmp ne %struct.commit* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 (i32, ...) @error(i32 %83)
  store i32 %84, i32* %28, align 4
  br label %647

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %26, align 4
  store i32 %86, i32* %25, align 4
  %87 = load i8*, i8** %9, align 8
  store i8* %87, i8** %30, align 8
  br label %88

88:                                               ; preds = %163, %85
  %89 = load i8*, i8** %30, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %168

97:                                               ; preds = %88
  %98 = load i8*, i8** %30, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %168

102:                                              ; preds = %97
  %103 = load i8*, i8** %30, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 35
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load i8*, i8** %30, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i8*, i8** %30, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @isspace(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112, %107
  %119 = load i8*, i8** %30, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i64 @strspn(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %122 = add nsw i64 1, %121
  %123 = load i8*, i8** %30, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %30, align 8
  %125 = load i8*, i8** %30, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %26, align 4
  br label %168

131:                                              ; preds = %112, %102
  %132 = load i8*, i8** %30, align 8
  %133 = call i32 @strcspn(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %133, i32* %29, align 4
  %134 = load i32, i32* %29, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %163

137:                                              ; preds = %131
  %138 = load i8*, i8** %30, align 8
  %139 = load i32, i32* %29, align 4
  %140 = call %struct.commit* @lookup_label(i8* %138, i32 %139, %struct.strbuf* %14)
  store %struct.commit* %140, %struct.commit** %16, align 8
  %141 = load %struct.commit*, %struct.commit** %16, align 8
  %142 = icmp ne %struct.commit* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %137
  %144 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* %29, align 4
  %146 = load i8*, i8** %30, align 8
  %147 = call i32 (i32, ...) @error(i32 %144, i32 %145, i8* %146)
  store i32 %147, i32* %28, align 4
  br label %647

148:                                              ; preds = %137
  %149 = load %struct.commit*, %struct.commit** %16, align 8
  %150 = load %struct.commit_list**, %struct.commit_list*** %22, align 8
  %151 = call %struct.TYPE_15__* @commit_list_insert(%struct.commit* %149, %struct.commit_list** %150)
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store %struct.commit_list** %152, %struct.commit_list*** %22, align 8
  %153 = load i32, i32* %29, align 4
  %154 = load i8*, i8** %30, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %30, align 8
  %157 = load i8*, i8** %30, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %25, align 4
  br label %163

163:                                              ; preds = %148, %136
  %164 = load i8*, i8** %30, align 8
  %165 = call i64 @strspn(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i8*, i8** %30, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 %165
  store i8* %167, i8** %30, align 8
  br label %88

168:                                              ; preds = %118, %101, %88
  %169 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %170 = icmp ne %struct.commit_list* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* %10, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 (i32, ...) @error(i32 %172, i32 %173, i8* %174)
  store i32 %175, i32* %28, align 4
  br label %647

176:                                              ; preds = %168
  %177 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %178 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %211

181:                                              ; preds = %176
  %182 = load %struct.commit*, %struct.commit** %15, align 8
  %183 = getelementptr inbounds %struct.commit, %struct.commit* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %186 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %185, i32 0, i32 6
  %187 = call i64 @oideq(i32* %184, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %181
  %190 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %191 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %192 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %191, i32 0, i32 1
  %193 = load %struct.commit_list*, %struct.commit_list** %192, align 8
  %194 = icmp ne %struct.commit_list* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %197 = call i32 (i32, ...) @error(i32 %196)
  store i32 %197, i32* %28, align 4
  br label %210

198:                                              ; preds = %189
  %199 = load %struct.repository*, %struct.repository** %7, align 8
  %200 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %201 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %200, i32 0, i32 0
  %202 = load %struct.commit*, %struct.commit** %201, align 8
  %203 = getelementptr inbounds %struct.commit, %struct.commit* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.commit*, %struct.commit** %15, align 8
  %206 = getelementptr inbounds %struct.commit, %struct.commit* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %209 = call i32 @fast_forward_to(%struct.repository* %199, i32* %204, i32* %207, i32 0, %struct.replay_opts* %208)
  store i32 %209, i32* %28, align 4
  br label %210

210:                                              ; preds = %198, %195
  br label %647

211:                                              ; preds = %181, %176
  %212 = load %struct.commit*, %struct.commit** %8, align 8
  %213 = icmp ne %struct.commit* %212, null
  br i1 %213, label %214, label %249

214:                                              ; preds = %211
  %215 = load %struct.commit*, %struct.commit** %8, align 8
  %216 = call i8* @get_commit_buffer(%struct.commit* %215, i32* null)
  store i8* %216, i8** %31, align 8
  %217 = load i8*, i8** %31, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %226, label %219

219:                                              ; preds = %214
  %220 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %221 = load %struct.commit*, %struct.commit** %8, align 8
  %222 = getelementptr inbounds %struct.commit, %struct.commit* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = call i8* @oid_to_hex(i32* %223)
  %225 = call i32 (i32, ...) @error(i32 %220, i8* %224)
  store i32 %225, i32* %28, align 4
  br label %647

226:                                              ; preds = %214
  %227 = load i8*, i8** %31, align 8
  %228 = call i32 @write_author_script(i8* %227)
  %229 = load i8*, i8** %31, align 8
  %230 = call i32 @find_commit_subject(i8* %229, i8** %32)
  %231 = load i8*, i8** %32, align 8
  %232 = call i32 @strlen(i8* %231)
  store i32 %232, i32* %33, align 4
  %233 = load i8*, i8** %32, align 8
  %234 = load i32, i32* %33, align 4
  %235 = load %struct.repository*, %struct.repository** %7, align 8
  %236 = call i8* @git_path_merge_msg(%struct.repository* %235)
  %237 = call i32 @write_message(i8* %233, i32 %234, i8* %236, i32 0)
  store i32 %237, i32* %28, align 4
  %238 = load %struct.commit*, %struct.commit** %8, align 8
  %239 = load i8*, i8** %31, align 8
  %240 = call i32 @unuse_commit_buffer(%struct.commit* %238, i8* %239)
  %241 = load i32, i32* %28, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %226
  %244 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %245 = load %struct.repository*, %struct.repository** %7, align 8
  %246 = call i8* @git_path_merge_msg(%struct.repository* %245)
  %247 = call i32 @error_errno(i32 %244, i8* %246)
  br label %647

248:                                              ; preds = %226
  br label %299

249:                                              ; preds = %211
  %250 = bitcast %struct.strbuf* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %251 = call i32 @git_author_info(i32 0)
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %253)
  %255 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @write_author_script(i8* %256)
  %258 = call i32 @strbuf_reset(%struct.strbuf* %34)
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %249
  %263 = load i8*, i8** %9, align 8
  %264 = load i32, i32* %26, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8* %266, i8** %30, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %26, align 4
  %269 = sub nsw i32 %267, %268
  store i32 %269, i32* %35, align 4
  br label %284

270:                                              ; preds = %249
  %271 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %272 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %271, i32 0, i32 1
  %273 = load %struct.commit_list*, %struct.commit_list** %272, align 8
  %274 = icmp ne %struct.commit_list* %273, null
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  %277 = load i32, i32* %25, align 4
  %278 = load i8*, i8** %9, align 8
  %279 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %276, i32 %277, i8* %278)
  %280 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  store i8* %281, i8** %30, align 8
  %282 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %35, align 4
  br label %284

284:                                              ; preds = %270, %262
  %285 = load i8*, i8** %30, align 8
  %286 = load i32, i32* %35, align 4
  %287 = load %struct.repository*, %struct.repository** %7, align 8
  %288 = call i8* @git_path_merge_msg(%struct.repository* %287)
  %289 = call i32 @write_message(i8* %285, i32 %286, i8* %288, i32 0)
  store i32 %289, i32* %28, align 4
  %290 = call i32 @strbuf_release(%struct.strbuf* %34)
  %291 = load i32, i32* %28, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %284
  %294 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %295 = load %struct.repository*, %struct.repository** %7, align 8
  %296 = call i8* @git_path_merge_msg(%struct.repository* %295)
  %297 = call i32 @error_errno(i32 %294, i8* %296)
  br label %647

298:                                              ; preds = %284
  br label %299

299:                                              ; preds = %298, %248
  %300 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %301 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %325

304:                                              ; preds = %299
  %305 = load %struct.commit*, %struct.commit** %8, align 8
  %306 = icmp ne %struct.commit* %305, null
  br i1 %306, label %307, label %325

307:                                              ; preds = %304
  %308 = load %struct.commit*, %struct.commit** %8, align 8
  %309 = getelementptr inbounds %struct.commit, %struct.commit* %308, i32 0, i32 1
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = icmp ne %struct.TYPE_11__* %310, null
  br i1 %311, label %312, label %325

312:                                              ; preds = %307
  %313 = load %struct.commit*, %struct.commit** %8, align 8
  %314 = getelementptr inbounds %struct.commit, %struct.commit* %313, i32 0, i32 1
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = load %struct.commit*, %struct.commit** %15, align 8
  %321 = getelementptr inbounds %struct.commit, %struct.commit* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = call i64 @oideq(i32* %319, i32* %322)
  %324 = icmp ne i64 %323, 0
  br label %325

325:                                              ; preds = %312, %307, %304, %299
  %326 = phi i1 [ false, %307 ], [ false, %304 ], [ false, %299 ], [ %324, %312 ]
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %27, align 4
  %328 = load i32, i32* %27, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %375

330:                                              ; preds = %325
  %331 = load %struct.commit*, %struct.commit** %8, align 8
  %332 = getelementptr inbounds %struct.commit, %struct.commit* %331, i32 0, i32 1
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load %struct.commit_list*, %struct.commit_list** %334, align 8
  store %struct.commit_list* %335, %struct.commit_list** %36, align 8
  %336 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  store %struct.commit_list* %336, %struct.commit_list** %19, align 8
  br label %337

337:                                              ; preds = %360, %330
  %338 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %339 = icmp ne %struct.commit_list* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %342 = icmp ne %struct.commit_list* %341, null
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi i1 [ false, %337 ], [ %342, %340 ]
  br i1 %344, label %345, label %367

345:                                              ; preds = %343
  %346 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %347 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %346, i32 0, i32 0
  %348 = load %struct.commit*, %struct.commit** %347, align 8
  %349 = getelementptr inbounds %struct.commit, %struct.commit* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %352 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %351, i32 0, i32 0
  %353 = load %struct.commit*, %struct.commit** %352, align 8
  %354 = getelementptr inbounds %struct.commit, %struct.commit* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  %356 = call i64 @oideq(i32* %350, i32* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %345
  store i32 0, i32* %27, align 4
  br label %367

359:                                              ; preds = %345
  br label %360

360:                                              ; preds = %359
  %361 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %362 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %361, i32 0, i32 1
  %363 = load %struct.commit_list*, %struct.commit_list** %362, align 8
  store %struct.commit_list* %363, %struct.commit_list** %19, align 8
  %364 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %365 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %364, i32 0, i32 1
  %366 = load %struct.commit_list*, %struct.commit_list** %365, align 8
  store %struct.commit_list* %366, %struct.commit_list** %36, align 8
  br label %337

367:                                              ; preds = %358, %343
  %368 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %369 = icmp ne %struct.commit_list* %368, null
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %372 = icmp ne %struct.commit_list* %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %370, %367
  store i32 0, i32* %27, align 4
  br label %374

374:                                              ; preds = %373, %370
  br label %375

375:                                              ; preds = %374, %325
  %376 = load i32, i32* %27, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %398

378:                                              ; preds = %375
  %379 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %380 = load %struct.repository*, %struct.repository** %7, align 8
  %381 = load %struct.commit*, %struct.commit** %8, align 8
  %382 = getelementptr inbounds %struct.commit, %struct.commit* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load %struct.commit*, %struct.commit** %15, align 8
  %385 = getelementptr inbounds %struct.commit, %struct.commit* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 0
  %387 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %388 = call i32 @fast_forward_to(%struct.repository* %380, i32* %383, i32* %386, i32 0, %struct.replay_opts* %387)
  store i32 %388, i32* %28, align 4
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* @TODO_EDIT_MERGE_MSG, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %378
  %394 = load i32, i32* @AMEND_MSG, align 4
  %395 = load i32, i32* %13, align 4
  %396 = or i32 %395, %394
  store i32 %396, i32* %13, align 4
  br label %635

397:                                              ; preds = %378
  br label %647

398:                                              ; preds = %375
  %399 = load i8*, i8** %23, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %406, label %401

401:                                              ; preds = %398
  %402 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %403 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %402, i32 0, i32 1
  %404 = load %struct.commit_list*, %struct.commit_list** %403, align 8
  %405 = icmp ne %struct.commit_list* %404, null
  br i1 %405, label %406, label %521

406:                                              ; preds = %401, %398
  %407 = bitcast %struct.child_process* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %407, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %408 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 2
  %409 = call i64 @read_env_script(i32* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %406
  %412 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %413 = call i8* @gpg_sign_opt_quoted(%struct.replay_opts* %412)
  store i8* %413, i8** %38, align 8
  %414 = load i8*, i8** @staged_changes_advice, align 8
  %415 = call i32 @_(i8* %414)
  %416 = load i8*, i8** %38, align 8
  %417 = load i8*, i8** %38, align 8
  %418 = call i32 (i32, ...) @error(i32 %415, i8* %416, i8* %417)
  store i32 %418, i32* %28, align 4
  br label %647

419:                                              ; preds = %406
  %420 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 0
  store i32 1, i32* %420, align 4
  %421 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %422 = call i32 @argv_array_push(i32* %421, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %423 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %424 = call i32 @argv_array_push(i32* %423, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %425 = load i8*, i8** %23, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %429 = call i32 @argv_array_push(i32* %428, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %454

430:                                              ; preds = %419
  %431 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %432 = load i8*, i8** %23, align 8
  %433 = call i32 @argv_array_push(i32* %431, i8* %432)
  store i32 0, i32* %29, align 4
  br label %434

434:                                              ; preds = %450, %430
  %435 = load i32, i32* %29, align 4
  %436 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %437 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %453

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %442 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %443 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %442, i32 0, i32 4
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %29, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @argv_array_pushf(i32* %441, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %440
  %451 = load i32, i32* %29, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %29, align 4
  br label %434

453:                                              ; preds = %434
  br label %454

454:                                              ; preds = %453, %427
  %455 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %456 = call i32 @argv_array_push(i32* %455, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %457 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %458 = call i32 @argv_array_push(i32* %457, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %459 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %460 = call i32 @argv_array_push(i32* %459, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %461 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %462 = call i32 @argv_array_push(i32* %461, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %463 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %464 = call i32 @argv_array_push(i32* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %465 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %466 = load %struct.repository*, %struct.repository** %7, align 8
  %467 = call i8* @git_path_merge_msg(%struct.repository* %466)
  %468 = call i32 @argv_array_push(i32* %465, i8* %467)
  %469 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %470 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %469, i32 0, i32 2
  %471 = load i8*, i8** %470, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %479

473:                                              ; preds = %454
  %474 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %475 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %476 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %475, i32 0, i32 2
  %477 = load i8*, i8** %476, align 8
  %478 = call i32 @argv_array_push(i32* %474, i8* %477)
  br label %479

479:                                              ; preds = %473, %454
  %480 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  store %struct.commit_list* %480, %struct.commit_list** %19, align 8
  br label %481

481:                                              ; preds = %493, %479
  %482 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %483 = icmp ne %struct.commit_list* %482, null
  br i1 %483, label %484, label %497

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %486 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %487 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %486, i32 0, i32 0
  %488 = load %struct.commit*, %struct.commit** %487, align 8
  %489 = getelementptr inbounds %struct.commit, %struct.commit* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 0
  %491 = call i8* @oid_to_hex(i32* %490)
  %492 = call i32 @argv_array_push(i32* %485, i8* %491)
  br label %493

493:                                              ; preds = %484
  %494 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %495 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %494, i32 0, i32 1
  %496 = load %struct.commit_list*, %struct.commit_list** %495, align 8
  store %struct.commit_list* %496, %struct.commit_list** %19, align 8
  br label %481

497:                                              ; preds = %481
  %498 = call i32 @strbuf_release(%struct.strbuf* %14)
  %499 = load %struct.repository*, %struct.repository** %7, align 8
  %500 = call i32 @git_path_cherry_pick_head(%struct.repository* %499)
  %501 = call i32 @unlink(i32 %500)
  %502 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %503 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %504 = call i32 @run_command(%struct.child_process* %37)
  store i32 %504, i32* %28, align 4
  %505 = load i32, i32* %28, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %520, label %507

507:                                              ; preds = %497
  %508 = load %struct.repository*, %struct.repository** %7, align 8
  %509 = getelementptr inbounds %struct.repository, %struct.repository* %508, i32 0, i32 0
  %510 = load %struct.TYPE_13__*, %struct.TYPE_13__** %509, align 8
  %511 = call i64 @discard_index(%struct.TYPE_13__* %510)
  %512 = icmp slt i64 %511, 0
  br i1 %512, label %517, label %513

513:                                              ; preds = %507
  %514 = load %struct.repository*, %struct.repository** %7, align 8
  %515 = call i64 @repo_read_index(%struct.repository* %514)
  %516 = icmp slt i64 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %513, %507
  %518 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %519 = call i32 (i32, ...) @error(i32 %518)
  store i32 %519, i32* %28, align 4
  br label %520

520:                                              ; preds = %517, %513, %497
  br label %647

521:                                              ; preds = %401
  %522 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %523 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %522, i32 0, i32 0
  %524 = load %struct.commit*, %struct.commit** %523, align 8
  store %struct.commit* %524, %struct.commit** %16, align 8
  %525 = load %struct.commit*, %struct.commit** %15, align 8
  %526 = load %struct.commit*, %struct.commit** %16, align 8
  %527 = call %struct.commit_list* @get_merge_bases(%struct.commit* %525, %struct.commit* %526)
  store %struct.commit_list* %527, %struct.commit_list** %18, align 8
  %528 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %529 = icmp ne %struct.commit_list* %528, null
  br i1 %529, label %530, label %542

530:                                              ; preds = %521
  %531 = load %struct.commit*, %struct.commit** %16, align 8
  %532 = getelementptr inbounds %struct.commit, %struct.commit* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 0
  %534 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %535 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %534, i32 0, i32 0
  %536 = load %struct.commit*, %struct.commit** %535, align 8
  %537 = getelementptr inbounds %struct.commit, %struct.commit* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 0
  %539 = call i64 @oideq(i32* %533, i32* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %530
  store i32 0, i32* %28, align 4
  br label %647

542:                                              ; preds = %530, %521
  %543 = load %struct.commit*, %struct.commit** %16, align 8
  %544 = getelementptr inbounds %struct.commit, %struct.commit* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 0
  %546 = call i8* @oid_to_hex(i32* %545)
  %547 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_hash_algo, align 8
  %548 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.repository*, %struct.repository** %7, align 8
  %551 = call i8* @git_path_merge_head(%struct.repository* %550)
  %552 = call i32 @write_message(i8* %546, i32 %549, i8* %551, i32 0)
  %553 = load %struct.repository*, %struct.repository** %7, align 8
  %554 = call i8* @git_path_merge_mode(%struct.repository* %553)
  %555 = call i32 @write_message(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 5, i8* %554, i32 0)
  %556 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  store %struct.commit_list* %556, %struct.commit_list** %19, align 8
  br label %557

557:                                              ; preds = %565, %542
  %558 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %559 = icmp ne %struct.commit_list* %558, null
  br i1 %559, label %560, label %569

560:                                              ; preds = %557
  %561 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %562 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %561, i32 0, i32 0
  %563 = load %struct.commit*, %struct.commit** %562, align 8
  %564 = call %struct.TYPE_15__* @commit_list_insert(%struct.commit* %563, %struct.commit_list** %20)
  br label %565

565:                                              ; preds = %560
  %566 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  %567 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %566, i32 0, i32 1
  %568 = load %struct.commit_list*, %struct.commit_list** %567, align 8
  store %struct.commit_list* %568, %struct.commit_list** %19, align 8
  br label %557

569:                                              ; preds = %557
  %570 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %571 = call i32 @free_commit_list(%struct.commit_list* %570)
  %572 = load %struct.repository*, %struct.repository** %7, align 8
  %573 = call i64 @repo_read_index(%struct.repository* %572)
  %574 = load %struct.repository*, %struct.repository** %7, align 8
  %575 = call i32 @init_merge_options(%struct.merge_options* %24, %struct.repository* %574)
  %576 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %576, align 8
  %577 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %578 = load i8*, i8** %577, align 8
  %579 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 1
  store i8* %578, i8** %579, align 8
  %580 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 2
  store i32 2, i32* %580, align 8
  %581 = load %struct.commit*, %struct.commit** %15, align 8
  %582 = load %struct.commit*, %struct.commit** %16, align 8
  %583 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %584 = call i32 @merge_recursive(%struct.merge_options* %24, %struct.commit* %581, %struct.commit* %582, %struct.commit_list* %583, %struct.commit** %17)
  store i32 %584, i32* %28, align 4
  %585 = load i32, i32* %28, align 4
  %586 = icmp sle i32 %585, 0
  br i1 %586, label %587, label %593

587:                                              ; preds = %569
  %588 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 3
  %589 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %588, i32 0, i32 0
  %590 = load i8*, i8** %589, align 8
  %591 = load i32, i32* @stdout, align 4
  %592 = call i32 @fputs(i8* %590, i32 %591)
  br label %593

593:                                              ; preds = %587, %569
  %594 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 3
  %595 = call i32 @strbuf_release(%struct.strbuf* %594)
  %596 = load i32, i32* %28, align 4
  %597 = icmp slt i32 %596, 0
  br i1 %597, label %598, label %603

598:                                              ; preds = %593
  %599 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  %600 = load i32, i32* %25, align 4
  %601 = load i8*, i8** %9, align 8
  %602 = call i32 (i32, ...) @error(i32 %599, i32 %600, i8* %601)
  br label %647

603:                                              ; preds = %593
  %604 = load i32, i32* %28, align 4
  %605 = icmp ne i32 %604, 0
  %606 = xor i1 %605, true
  %607 = zext i1 %606 to i32
  store i32 %607, i32* %28, align 4
  %608 = load %struct.repository*, %struct.repository** %7, align 8
  %609 = getelementptr inbounds %struct.repository, %struct.repository* %608, i32 0, i32 0
  %610 = load %struct.TYPE_13__*, %struct.TYPE_13__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %624

614:                                              ; preds = %603
  %615 = load %struct.repository*, %struct.repository** %7, align 8
  %616 = getelementptr inbounds %struct.repository, %struct.repository* %615, i32 0, i32 0
  %617 = load %struct.TYPE_13__*, %struct.TYPE_13__** %616, align 8
  %618 = load i32, i32* @COMMIT_LOCK, align 4
  %619 = call i64 @write_locked_index(%struct.TYPE_13__* %617, %struct.lock_file* @do_merge.lock, i32 %618)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %614
  %622 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  %623 = call i32 (i32, ...) @error(i32 %622)
  store i32 %623, i32* %28, align 4
  br label %647

624:                                              ; preds = %614, %603
  %625 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %626 = load i32, i32* %28, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %634

628:                                              ; preds = %624
  %629 = load %struct.repository*, %struct.repository** %7, align 8
  %630 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %631 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %630, i32 0, i32 3
  %632 = load i32, i32* %631, align 8
  %633 = call i32 @repo_rerere(%struct.repository* %629, i32 %632)
  br label %646

634:                                              ; preds = %624
  br label %635

635:                                              ; preds = %634, %393
  %636 = load %struct.repository*, %struct.repository** %7, align 8
  %637 = load %struct.repository*, %struct.repository** %7, align 8
  %638 = call i8* @git_path_merge_msg(%struct.repository* %637)
  %639 = load %struct.replay_opts*, %struct.replay_opts** %12, align 8
  %640 = load i32, i32* %13, align 4
  %641 = call i32 @run_git_commit(%struct.repository* %636, i8* %638, %struct.replay_opts* %639, i32 %640)
  %642 = icmp ne i32 %641, 0
  %643 = xor i1 %642, true
  %644 = xor i1 %643, true
  %645 = zext i1 %644 to i32
  store i32 %645, i32* %28, align 4
  br label %646

646:                                              ; preds = %635, %628
  br label %647

647:                                              ; preds = %646, %621, %598, %541, %520, %411, %397, %293, %243, %219, %210, %171, %143, %82, %77
  %648 = call i32 @strbuf_release(%struct.strbuf* %14)
  %649 = call i32 @rollback_lock_file(%struct.lock_file* @do_merge.lock)
  %650 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %651 = call i32 @free_commit_list(%struct.commit_list* %650)
  %652 = load i32, i32* %28, align 4
  ret i32 %652
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i8*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local %struct.commit* @lookup_label(i8*, i32, %struct.strbuf*) #2

declare dso_local %struct.TYPE_15__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i64 @oideq(i32*, i32*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @fast_forward_to(%struct.repository*, i32*, i32*, i32, %struct.replay_opts*) #2

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @write_author_script(i8*) #2

declare dso_local i32 @find_commit_subject(i8*, i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @write_message(i8*, i32, i8*, i32) #2

declare dso_local i8* @git_path_merge_msg(%struct.repository*) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @git_author_info(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @read_env_script(i32*) #2

declare dso_local i8* @gpg_sign_opt_quoted(%struct.replay_opts*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i64 @discard_index(%struct.TYPE_13__*) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #2

declare dso_local i8* @git_path_merge_head(%struct.repository*) #2

declare dso_local i8* @git_path_merge_mode(%struct.repository*) #2

declare dso_local i32 @free_commit_list(%struct.commit_list*) #2

declare dso_local i32 @init_merge_options(%struct.merge_options*, %struct.repository*) #2

declare dso_local i32 @merge_recursive(%struct.merge_options*, %struct.commit*, %struct.commit*, %struct.commit_list*, %struct.commit**) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i64 @write_locked_index(%struct.TYPE_13__*, %struct.lock_file*, i32) #2

declare dso_local i32 @repo_rerere(%struct.repository*, i32) #2

declare dso_local i32 @run_git_commit(%struct.repository*, i8*, %struct.replay_opts*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
